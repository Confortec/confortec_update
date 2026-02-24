import ttkbootstrap as ttk
from ttkbootstrap.constants import *
import tkinter as tk
from tkinter import messagebox
from database import get_db_connection
from datetime import datetime, date, timedelta
import pymysql
import os
import subprocess

def create_manual_sender_tab(parent):
    container = ttk.Frame(parent, padding=20)
    
    class ManualSenderApp:
        def __init__(self, master):
            self.master = master
            self.current_index = 0
            self.pendencias = []
            
            self.setup_ui()
            self.load_data()
            
        def setup_ui(self):
            # --- HEADER ---
            header_frame = ttk.Frame(self.master)
            header_frame.pack(fill=X, pady=(0, 20))
            
            ttk.Label(header_frame, text="Envio Manual (Fila de Hoje)", font=("Segoe UI", 20, "bold")).pack(side=LEFT)
            
            btn_refresh = ttk.Button(header_frame, text="🔄 Recarregar", bootstyle="primary", command=self.load_data)
            btn_refresh.pack(side=RIGHT, padx=(10, 0))
            
            self.lbl_contador = ttk.Label(header_frame, text="Carregando...", font=("Segoe UI", 12), bootstyle="secondary")
            self.lbl_contador.pack(side=RIGHT, anchor=S)

            # --- CARD PRINCIPAL ---
            self.card = ttk.Frame(self.master, bootstyle="secondary", padding=2)
            self.card.pack(fill=BOTH, expand=YES, padx=50, pady=10)
            
            inner_card = ttk.Frame(self.card, padding=30)
            inner_card.pack(fill=BOTH, expand=YES)

            # --- CAMPOS DE TEXTO ---
            self.fields = {
                "Nome": ttk.StringVar(),
                "Telefone": ttk.StringVar(),
                "Regra": ttk.StringVar(),
                "Imagem": ttk.StringVar() # Guarda o diretório, mas o botão copia a imagem real
            }
            
            self.create_copy_field(inner_card, "Nome do Cliente:", self.fields["Nome"])
            self.create_copy_field(inner_card, "WhatsApp:", self.fields["Telefone"])
            self.create_copy_field(inner_card, "Regra/Status:", self.fields["Regra"])
            
            # --- CAMPO ESPECIAL DA IMAGEM ---
            img_row = ttk.Frame(inner_card)
            img_row.pack(fill=X, pady=5)
            ttk.Label(img_row, text="Anexo (Imagem):", width=20, font=("Segoe UI", 10, "bold")).pack(side=LEFT)
            
            entry_img = ttk.Entry(img_row, textvariable=self.fields["Imagem"], state="readonly", font=("Segoe UI", 11))
            entry_img.pack(side=LEFT, fill=X, expand=YES, padx=(0, 10))
            
            btn_copy_img = ttk.Button(img_row, text="🖼️ Copiar FOTO (Ctrl+V)", bootstyle="outline-info", 
                                      command=lambda: self.copy_image_to_clipboard(self.fields["Imagem"].get()))
            btn_copy_img.pack(side=RIGHT)
            
            # --- CAMPO DA MENSAGEM ---
            ttk.Label(inner_card, text="Mensagem Completa:", font=("Segoe UI", 10, "bold")).pack(anchor=W, pady=(15, 5))
            
            msg_frame = ttk.Frame(inner_card)
            msg_frame.pack(fill=BOTH, expand=YES)
            
            self.txt_mensagem = tk.Text(msg_frame, height=6, font=("Segoe UI", 11))
            self.txt_mensagem.pack(side=LEFT, fill=BOTH, expand=YES, padx=(0, 10))
            
            btn_copy_msg = ttk.Button(msg_frame, text="📋 Copiar Texto", bootstyle="outline-primary", 
                                      command=lambda: self.copy_to_clipboard(self.txt_mensagem.get("1.0", "end-1c")))
            btn_copy_msg.pack(side=RIGHT, anchor=N)

            # --- RODAPÉ / NAVEGAÇÃO ---
            nav_frame = ttk.Frame(self.master)
            nav_frame.pack(fill=X, pady=20, padx=50)
            
            self.btn_prev = ttk.Button(nav_frame, text="⬅️ Anterior", bootstyle="secondary", command=self.prev_item)
            self.btn_prev.pack(side=LEFT)
            
            self.btn_mark_sent = ttk.Button(nav_frame, text="✅ Marcar como Enviado no BD", bootstyle="success", command=self.mark_as_sent)
            self.btn_mark_sent.pack(side=LEFT, expand=YES)
            
            self.btn_next = ttk.Button(nav_frame, text="Próximo ➡️", bootstyle="primary", command=self.next_item)
            self.btn_next.pack(side=RIGHT)

        def create_copy_field(self, parent, label_text, text_var):
            row = ttk.Frame(parent)
            row.pack(fill=X, pady=5)
            ttk.Label(row, text=label_text, width=20, font=("Segoe UI", 10, "bold")).pack(side=LEFT)
            entry = ttk.Entry(row, textvariable=text_var, state="readonly", font=("Segoe UI", 11))
            entry.pack(side=LEFT, fill=X, expand=YES, padx=(0, 10))
            btn_copy = ttk.Button(row, text="📋 Copiar", bootstyle="outline-primary", command=lambda: self.copy_to_clipboard(text_var.get()))
            btn_copy.pack(side=RIGHT)

        def copy_to_clipboard(self, text):
            self.master.clipboard_clear()
            self.master.clipboard_append(text)

        # NOVA FUNÇÃO: Copia a imagem real (Pixels) para o Ctrl+V do Windows
        def copy_image_to_clipboard(self, filepath):
            if not filepath or filepath == "Nenhuma" or not os.path.exists(filepath):
                messagebox.showwarning("Aviso", "Nenhuma imagem válida foi encontrada no caminho.")
                return

            # Ajusta barras para o PowerShell ler corretamente
            caminho_seguro = filepath.replace("\\", "/")
            
            comando_ps = f'''
            Add-Type -AssemblyName System.Windows.Forms
            try {{
                $img = [System.Drawing.Image]::FromFile('{caminho_seguro}')
                [System.Windows.Forms.Clipboard]::SetImage($img)
                $img.Dispose()
            }} catch {{
                Write-Error $_.Exception.Message
            }}
            '''
            try:
                # Executa ocuto, sem piscar tela preta no Windows
                subprocess.run(["powershell", "-NoProfile", "-Command", comando_ps], creationflags=subprocess.CREATE_NO_WINDOW)
            except Exception as e:
                messagebox.showerror("Erro", f"Falha ao jogar imagem na área de transferência:\n{e}")

        def calcular_data_alvo(self, data_base, dias_apos):
            if not data_base: return None
            hoje = datetime.now().date()
            if isinstance(data_base, str):
                try: data_base = datetime.strptime(data_base, '%Y-%m-%d').date()
                except: 
                    try: data_base = datetime.strptime(data_base, '%d/%m/%Y').date()
                    except: return None
            if isinstance(data_base, datetime): data_base = data_base.date()
            data_alvo = data_base + timedelta(days=dias_apos)
            
            ds = data_alvo.weekday()
            if ds == 5: data_alvo += timedelta(days=2) 
            elif ds == 6: data_alvo += timedelta(days=1) 
            return data_alvo

        def load_data(self):
            self.pendencias = []
            conn = get_db_connection()
            if not conn:
                self.update_display()
                return
                
            hoje = datetime.now().date()
            ano_atual = hoje.year
            
            # FILTRO CORRIGIDO: Exatamente igual à aba "Pendências" (Hoje + até 5 dias de atraso)
            limite_passado = hoje - timedelta(days=5) 
            
            try:
                with conn.cursor(pymysql.cursors.DictCursor) as cursor:
                    cursor.execute("SELECT * FROM automacao_mensagens")
                    regras = cursor.fetchall()
                    
                    if not regras:
                        self.update_display()
                        return

                    cursor.execute("SELECT id, nome, telefone, grupo, data_cadastro as data_ref FROM leads")
                    leads = cursor.fetchall()
                    cursor.execute("SELECT id, nome, telefone, grupo, data_compra as data_ref FROM compras_detalhadas")
                    compras = cursor.fetchall()
                    cursor.execute("SELECT id, nome, whatsapp as telefone, grupo, data_cadastro, data_nascimento FROM clientes")
                    clientes = cursor.fetchall()

                    for regra in regras:
                        tipo = regra.get('tipo_entidade', '')
                        grupo = regra.get('grupo', '')
                        dias = regra.get('dias_apos', 0)
                        texto_msg = regra.get('texto_mensagem', '')
                        caminho_img = regra.get('caminho_imagem', '')
                        
                        lista = []
                        eh_niver = False
                        
                        if tipo == 'LEAD': lista = [x for x in leads if x.get('grupo') == grupo]
                        elif tipo == 'COMPRA': lista = [x for x in compras if x.get('grupo') == grupo]
                        elif tipo == 'CLIENTE_CAD':
                            lista = [x for x in clientes if x.get('grupo') == grupo]
                            for c in lista: c['data_ref'] = c.get('data_cadastro')
                        elif tipo == 'ANIVERSARIO':
                            lista = [x for x in clientes if x.get('grupo') == grupo]
                            for c in lista: c['data_ref'] = c.get('data_nascimento')
                            eh_niver = True

                        for p in lista:
                            if not p.get('data_ref'): continue
                            
                            dt_alvo = self.calcular_data_alvo(p['data_ref'], dias)
                            if eh_niver: 
                                 try: dt_alvo = date(ano_atual, p['data_ref'].month, p['data_ref'].day)
                                 except: dt_alvo = date(ano_atual, 3, 1)

                            # VERIFICAÇÃO IGUAL À ABA OFICIAL
                            if dt_alvo and (limite_passado <= dt_alvo <= hoje):
                                key = int(f"{ano_atual}{dias}") if eh_niver else dias
                                cursor.execute("SELECT COUNT(*) as c FROM mensagens_enviadas WHERE entity_id=%s AND entity_type=%s AND dias_key=%s", 
                                               (p['id'], tipo, key))
                                ja_foi = cursor.fetchone()['c'] > 0

                                if not ja_foi:
                                    status_dia = "[⏳ HOJE]" if dt_alvo == hoje else f"[🚨 ATRASADO {dt_alvo.strftime('%d/%m')}]"
                                    
                                    nome_str = str(p.get('nome', '')).strip()
                                    primeiro_nome = nome_str.split()[0] if nome_str else "Cliente"
                                    msg_pronta = str(texto_msg).replace("{nome}", primeiro_nome) if texto_msg else ""

                                    self.pendencias.append({
                                        "dt_obj": dt_alvo,
                                        "entity_id": p['id'],
                                        "tipo_entidade": tipo,
                                        "dias_key": key,
                                        "nome": nome_str,
                                        "telefone": p.get('telefone', ''),
                                        "regra": f"{status_dia} {tipo} - {grupo}",
                                        "mensagem": msg_pronta,
                                        "imagem": caminho_img if caminho_img else "Nenhuma"
                                    })

            except Exception as e:
                print(f"Erro ao carregar dados manuais: {e}")
            finally:
                conn.close()
                
            # Ordena da data mais antiga (atrasados) para a de hoje
            self.pendencias.sort(key=lambda x: x['dt_obj'])
            
            self.current_index = 0
            self.update_display()

        def update_display(self):
            if not self.pendencias:
                self.lbl_contador.config(text="Tudo limpo! Nenhuma pendência na fila.")
                self.clear_fields()
                self.btn_prev.config(state="disabled")
                self.btn_next.config(state="disabled")
                self.btn_mark_sent.config(state="disabled")
                return

            total = len(self.pendencias)
            self.lbl_contador.config(text=f"Pendência {self.current_index + 1} de {total}")
            
            item_atual = self.pendencias[self.current_index]
            
            self.fields["Nome"].set(item_atual.get("nome", ""))
            self.fields["Telefone"].set(item_atual.get("telefone", ""))
            self.fields["Regra"].set(item_atual.get("regra", ""))
            self.fields["Imagem"].set(item_atual.get("imagem", ""))
            
            self.txt_mensagem.delete("1.0", "end")
            self.txt_mensagem.insert("end", item_atual.get("mensagem", ""))
            
            self.btn_prev.config(state="normal" if self.current_index > 0 else "disabled")
            self.btn_next.config(state="normal" if self.current_index < total - 1 else "disabled")
            self.btn_mark_sent.config(state="normal")

        def prev_item(self):
            if self.current_index > 0:
                self.current_index -= 1
                self.update_display()

        def next_item(self):
            if self.current_index < len(self.pendencias) - 1:
                self.current_index += 1
                self.update_display()

        def mark_as_sent(self):
            if not self.pendencias: return
            item_atual = self.pendencias[self.current_index]
            
            conn = get_db_connection()
            if conn:
                try:
                    with conn.cursor() as cursor:
                        cursor.execute("""
                            INSERT INTO mensagens_enviadas (entity_id, entity_type, dias_key, data_envio)
                            VALUES (%s, %s, %s, NOW())
                        """, (item_atual["entity_id"], item_atual["tipo_entidade"], item_atual["dias_key"]))
                    conn.commit()
                except Exception as e:
                    print(f"Erro ao salvar envio no BD: {e}")
                finally:
                    conn.close()
            
            self.pendencias.pop(self.current_index)
            
            if self.current_index >= len(self.pendencias) and self.current_index > 0:
                self.current_index -= 1
                
            self.update_display()

        def clear_fields(self):
            for var in self.fields.values():
                var.set("")
            self.txt_mensagem.delete("1.0", "end")

    app = ManualSenderApp(container)
    return container