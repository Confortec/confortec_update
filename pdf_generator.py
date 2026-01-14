# APP-3.00/pdf_generator.py
import io
import os
import requests
from datetime import datetime
import locale
from reportlab.pdfgen import canvas
from reportlab.lib.pagesizes import A4
from reportlab.lib.utils import ImageReader
from reportlab.lib.colors import black
from pypdf import PdfReader, PdfWriter

# Tente configurar locale para PT-BR
try:
    locale.setlocale(locale.LC_TIME, 'pt_BR.utf8')
    locale.setlocale(locale.LC_MONETARY, 'pt_BR.utf8')
except:
    try:
        locale.setlocale(locale.LC_TIME, 'Portuguese_Brazil')
        locale.setlocale(locale.LC_MONETARY, 'Portuguese_Brazil')
    except:
        pass # Falha silenciosa se o sistema não tiver o locale

class BudgetPDFGenerator:
    def __init__(self, base_pdf_path, output_path):
        self.base_pdf_path = base_pdf_path
        self.output_path = output_path
        self.packet = io.BytesIO()
        # A4 em pontos: approx 595 x 842. Se seu layout foi feito em 794x1123 px,
        # a proporção é mantida. ReportLab usa "pontos" (1/72 inch).
        self.c = canvas.Canvas(self.packet, pagesize=A4)
        self.width, self.height = A4

        # --- CONFIGURAÇÃO DE COORDENADAS (X, Y) ---
        # IMPORTANTE: Ajuste estes valores testando com seu "CamposOrçamento.pdf"
        # O sistema de coordenadas do PDF começa no canto INFERIOR ESQUERDO (0,0).
        self.coords = {
            "date": (650, 780),           # Data no topo
            "customer_name": (120, 750),  # Nome do Cliente
            "signature": (400, 100),      # Assinatura
            
            # Produtos (Lista)
            "prod_start_y": 600,          # Altura onde começa o primeiro produto
            "prod_line_gap": 110,         # Espaço vertical entre produtos
            
            # Colunas do Produto (X)
            "col_img": 60,                # Imagem
            "col_desc": 160,              # Descrição
            "col_qty": 400,               # Quantidade
            "col_price_cash": 450,        # Valor à vista
            "col_price_inst": 520,        # Valor parcelado
            
            # Observações
            "obs_start_y": 200,           # Altura onde começam as obs
            "obs_line_gap": 15            # Espaçamento entre linhas de obs
        }

    def draw_text(self, text, x, y, font="Helvetica", size=10, color=black):
        self.c.setFillColor(color)
        self.c.setFont(font, size)
        self.c.drawString(x, y, str(text))

    def draw_multiline_text(self, text, x, y, width=200, font="Helvetica", size=9):
        """Desenha texto que quebra linha automaticamente"""
        text_obj = self.c.beginText(x, y)
        text_obj.setFont(font, size)
        # Lógica simples de quebra (para textos complexos use Paragraph do reportlab.platypus)
        import textwrap
        lines = textwrap.wrap(text, width=40) # Ajuste width conforme caracteres
        for line in lines:
            text_obj.textLine(line)
        self.c.drawText(text_obj)

    def draw_image_from_url(self, url, x, y, width=50, height=50):
        try:
            # Tenta baixar a imagem com timeout curto para não travar
            response = requests.get(url, stream=True, timeout=5)
            if response.status_code == 200:
                img = ImageReader(io.BytesIO(response.content))
                self.c.drawImage(img, x, y, width=width, height=height, mask='auto', preserveAspectRatio=True)
            else:
                self.draw_text("[Img Erro]", x, y)
        except Exception as e:
            print(f"Erro ao baixar imagem: {e}")
            self.draw_text("[Sem Img]", x, y)

    def _parse_currency(self, value_str):
        """Converte string 'R$ 1.200,00' para float 1200.00"""
        if isinstance(value_str, (int, float)):
            return float(value_str)
        try:
            # Remove R$, espaços, pontos de milhar e troca vírgula por ponto
            clean = str(value_str).replace('R$', '').strip()
            clean = clean.replace('.', '').replace(',', '.')
            return float(clean)
        except (ValueError, AttributeError):
            return 0.0

    def _format_currency(self, value):
        """Converte float para 'R$ 1.200,00'"""
        try:
            return locale.currency(value, grouping=True, symbol=True)
        except:
            return f"R$ {value:,.2f}".replace(",", "X").replace(".", ",").replace("X", ".")

    def generate_budget_pdf(self, budget_data):
        """
        Gera o PDF preenchendo os dados no template.
        budget_data deve conter:
        {
            'client_name': str,
            'date': str,
            'products': [
                {
                    'image_url': str,
                    'description': str,
                    'quantity': int/str,
                    'price_cash': str/float,  # Unitário ou total da linha
                    'price_installments': str/float # Unitário ou total da linha
                }, ...
            ],
            'observations': str
        }
        """
        # 1. Preencher Cabeçalho
        self.draw_text(budget_data.get('date', datetime.now().strftime('%d/%m/%Y')), *self.coords['date'])
        self.draw_text(budget_data.get('client_name', ''), *self.coords['customer_name'], size=12)

        # 2. Preencher Produtos
        products = budget_data.get('products', [])
        current_y = self.coords['prod_start_y']
        
        total_cash = 0.0
        total_installments = 0.0

        for prod in products:
            # Extrair dados
            desc = prod.get('description', '')
            qty = prod.get('quantity', 1)
            price_cash_raw = prod.get('price_cash', 0)
            price_inst_raw = prod.get('price_installments', 0)
            img_url = prod.get('image_url', '')

            # Calcular valores para soma (assumindo que o valor passado já é o da linha ou unitário * qtd)
            # Se o sistema passa unitário, multiplique por qty aqui. 
            # Vou assumir que o texto passado é o valor final da linha para exibição, 
            # mas vou converter para somar no total geral.
            val_cash = self._parse_currency(price_cash_raw)
            val_inst = self._parse_currency(price_inst_raw)
            
            # Se val_inst vier zerado, tenta calcular baseado num padrão (ex: mesmo valor ou juros)
            # Se for 0, assumimos que é igual ao a vista ou aplicamos regra simples se necessário
            if val_inst == 0 and val_cash > 0:
                val_inst = val_cash # Fallback simples, ajuste se tiver juros

            total_cash += val_cash
            total_installments += val_inst

            # Desenhar Linha do Produto
            if img_url:
                self.draw_image_from_url(img_url, self.coords['col_img'], current_y - 10, width=50, height=50)
            
            self.draw_multiline_text(desc, self.coords['col_desc'], current_y + 20)
            self.draw_text(str(qty), self.coords['col_qty'], current_y + 20)
            self.draw_text(str(price_cash_raw), self.coords['col_price_cash'], current_y + 20)
            self.draw_text(str(price_inst_raw), self.coords['col_price_inst'], current_y + 20)

            # Atualizar Y para o próximo produto
            current_y -= self.coords['prod_line_gap']

        # 3. Desenhar Totais (Imediatamente após o último item)
        # Posição Y da linha de totais
        total_y = current_y + 40 # Sobe um pouco em relação ao gap total para ficar colado

        # Rótulo "TOTAL" na coluna QTD
        self.c.setFont("Helvetica-Bold", 11)
        self.c.drawString(self.coords['col_qty'], total_y, "TOTAL")
        
        # Valor Total à Vista
        self.c.drawString(self.coords['col_price_cash'], total_y, self._format_currency(total_cash))
        
        # Valor Total Parcelado (10x)
        self.c.drawString(self.coords['col_price_inst'], total_y, self._format_currency(total_installments))

        # 4. Observações (Se houver coordenadas fixas, usa elas. Se for dinâmico, usa current_y)
        # Usando a coordenada fixa conforme seu pedido original, mas cuidado para não sobrepor se a lista for longa
        obs_text = budget_data.get('observations', '')
        if obs_text:
            obs_y = self.coords['obs_start_y']
            self.draw_multiline_text(obs_text, 120, obs_y, width=60)

        # Finalizar PDF na memória
        self.c.save()
        self.packet.seek(0)

        # 5. Mesclar com PDF Base
        try:
            new_pdf = PdfReader(self.packet)
            base_pdf = PdfReader(self.base_pdf_path)
            output = PdfWriter()

            # Pega a primeira página do base (assumindo template de 1 pág)
            page = base_pdf.pages[0]
            # Mescla com o conteúdo gerado
            page.merge_page(new_pdf.pages[0])
            
            output.add_page(page)

            # Salvar arquivo final
            with open(self.output_path, "wb") as f_out:
                output.write(f_out)
            
            return True, "PDF gerado com sucesso!"
        except Exception as e:
            return False, f"Erro ao mesclar/salvar PDF: {str(e)}"