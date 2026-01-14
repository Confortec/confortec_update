import sys
import os
import multiprocessing
import queue
import threading
from functools import partial
from tkinter import BOTH, HORIZONTAL, LEFT, NONE, X, YES, messagebox, PhotoImage

# --- CONFIGURAÇÃO DA VERSÃO ---
APP_VERSION = "7.80"  

# --- DEBUG BLINDADO ---
def debug_print(msg):
    try:
        print(f"[BOOT] {msg}", flush=True)
    except:
        pass

debug_print(f"Iniciando main_app.py versão {APP_VERSION}...")

try:
    import ttkbootstrap as ttk
    from ttkbootstrap.constants import *
    debug_print("Biblioteca visual (ttkbootstrap) carregada.")
    
    import reportlab
    import pypdf
    debug_print("Bibliotecas de PDF (reportlab, pypdf) carregadas.")
    
except ImportError as e:
    debug_print(f"ERRO CRÍTICO: Falha ao carregar bibliotecas: {e}")    
    sys.exit(1)

try:
    debug_print("Carregando Banco de Dados...")
    from database import initialize_database
    from backup_service import create_backup
    
    # --- IMPORTANTE: Importando o Watcher ---
    from data_watcher import watch_database
    
    debug_print("Carregando componentes de UI...")
    from ui_components import tab_automation
    from ui_components import tab_customers
    from ui_components import tab_purchases
    from ui_components import tab_leads
    from ui_components import tab_products
    from ui_components import tab_pending_messages
    from ui_components import tab_message_editor
    from ui_components import tab_reports
    from ui_components import tab_budgets
    
    debug_print(">>> SUCESSO: Todos os módulos foram carregados!")

except Exception as e:
    import traceback
    error_log = traceback.format_exc()
    print("\n" + "="*50)
    print("ERRO FATAL DURANTE A INICIALIZAÇÃO")
    print("="*50)
    print(error_log)
    print("="*50)
    sys.exit(1)

# --- NOVA FUNÇÃO: ABA DE VERSÃO ---
def create_version_tab(parent):
    frame = ttk.Frame(parent, padding=30)
    
    # Container centralizado
    center_frame = ttk.Frame(frame)
    center_frame.pack(expand=True)

    ttk.Label(center_frame, text="Status do Sistema", font=("Segoe UI", 16), bootstyle="secondary").pack(pady=(0, 10))
    
    # Mostra a versão definida na variável lá em cima
    ttk.Label(center_frame, text=f"✅ VERSÃO {APP_VERSION} ATIVA", font=("Segoe UI", 32, "bold"), bootstyle="success").pack(pady=20)
    
    ttk.Label(center_frame, text="A atualização automática funcionou com sucesso!", font=("Segoe UI", 12)).pack(pady=5)
    ttk.Label(center_frame, text="O Launcher baixou e instalou esta versão diretamente do Google Drive.", font=("Segoe UI", 10), bootstyle="secondary").pack(pady=20)
    
    return frame

class ConfortecApp:
    def __init__(self, root):
        self.root = root
        # Título Dinâmico
        self.root.title(f"Confortec Gestão | v{APP_VERSION}")
        self.root.geometry("1400x850")

        # --- CONFIGURAÇÃO DE TEMAS ---
        self.themes = {
            "Claro - Padrão": "litera",
            "Claro - Moderno": "cosmo",
            "Escuro - Padrão": "darkly",
            "Escuro - Tech": "cyborg"
        }
        
        self.style = ttk.Style()
        
        # Inicializa tabelas
        debug_print("Inicializando tabelas do banco...")
        initialize_database()

        self.pages = {}
        self.current_page_key = None
        
        # --- INTEGRAÇÃO DATA WATCHER (COM PROTEÇÃO) ---
        self.update_queue = queue.Queue()
        try:
            self.watcher_thread = threading.Thread(target=watch_database, args=(self.update_queue,), daemon=True)
            self.watcher_thread.start()
            debug_print("Serviço de monitoramento iniciado.")
        except Exception as e:
            debug_print(f"Alerta: O monitoramento automático falhou ao iniciar: {e}")
        
        # Inicia loop de verificação de atualizações na interface
        self.root.after(1000, self.check_updates)

        # Constrói a interface
        self.create_widgets()
        
        # Aplica tema inicial (Claro)
        self.change_theme("litera")
        
        # Abre página inicial
        self.show_page("automation")
        
        self.root.protocol("WM_DELETE_WINDOW", self.on_closing)
        

    def check_updates(self):
        """Verifica se há mudanças no banco e atualiza a tela atual automaticamente"""
        try:
            while not self.update_queue.empty():
                msg = self.update_queue.get_nowait()
                
                # Regra 1: Atualiza Pendências se houver mudança em clientes/leads/regras
                if self.current_page_key == 'pending' and msg in ['customers_updated', 'leads_updated', 'rules_updated']:
                    if self.pages['pending']['frame'] and hasattr(self.pages['pending']['frame'], 'refresh_data'):
                         self.pages['pending']['frame'].refresh_data()
                         
                # Regra 2: Atualiza tabela de Clientes
                if self.current_page_key == 'customers' and msg == 'customers_updated':
                    if hasattr(self.pages['customers']['frame'], 'refresh_table'):
                        self.pages['customers']['frame'].refresh_table()
                
                # Regra 3: Atualiza tabela de Leads
                if self.current_page_key == 'leads' and msg == 'leads_updated':
                    if hasattr(self.pages['leads']['frame'], 'refresh_table'):
                        self.pages['leads']['frame'].refresh_table()
                        
        except Exception as e:
            pass
            
        self.root.after(2000, self.check_updates)


    def change_theme(self, theme_name):
        try:
            self.style.theme_use(theme_name)
            
            if theme_name in ['darkly', 'cyborg', 'superhero']:
                self.bg_panel = "#2b2b2b"
                self.fg_text = "#ffffff"
            else:
                self.bg_panel = "#f8f9fa" 
                self.fg_text = "#212529"
            
            self.style.configure("Sidebar.TFrame", background=self.bg_panel)
            self.style.configure("Sidebar.TLabel", background=self.bg_panel, foreground=self.fg_text)
            
        except Exception as e:
            print(f"Erro ao mudar tema: {e}")

    def on_closing(self):
        try:
            from ui_components.tab_automation import automation_process
            if automation_process and automation_process.poll() is None:
                automation_process.terminate()
        except: pass

        if messagebox.askyesno("Sair", "Deseja fazer backup e sair?"):
            create_backup()
        
        self.root.destroy()
        
    def create_widgets(self):
        main_pane = ttk.PanedWindow(self.root, orient=HORIZONTAL)
        main_pane.pack(fill=BOTH, expand=YES)

        # Menu Lateral
        self.sidebar_frame = ttk.Frame(main_pane, padding=10, style="Sidebar.TFrame")
        main_pane.add(self.sidebar_frame, weight=1) 
        
        # Logo Area
        title_frame = ttk.Frame(self.sidebar_frame, style="Sidebar.TFrame")
        title_frame.pack(pady=(20, 20), anchor='center')
        
        base_path = getattr(sys, '_MEIPASS', os.path.abspath("."))
        try:
            self.logo_image = PhotoImage(file=os.path.join(base_path, "assets", "logo.png")).subsample(2,2)
            ttk.Label(title_frame, image=self.logo_image, style="Sidebar.TLabel").pack()
        except:
            ttk.Label(title_frame, text="CONFORTEC", font=("Segoe UI", 22, "bold"), foreground="#4CAF50", style="Sidebar.TLabel").pack()

        # --- SELETOR DE TEMAS ---
        theme_frame = ttk.LabelFrame(self.sidebar_frame, text="🎨 Aparência", padding=5, style="Sidebar.TFrame")
        theme_frame.pack(fill=X, padx=5, pady=10)
        
        self.combo_themes = ttk.Combobox(theme_frame, values=list(self.themes.keys()), state="readonly")
        self.combo_themes.set("Claro - Padrão") 
        self.combo_themes.pack(fill=X)
        
        def on_theme_select(event):
            selected_name = self.combo_themes.get()
            real_theme_name = self.themes.get(selected_name, "litera")
            self.change_theme(real_theme_name)
            
        self.combo_themes.bind("<<ComboboxSelected>>", on_theme_select)

        # --- MENU DE NAVEGAÇÃO ---
        sidebar_config = {
            "PRINCIPAL": [
                ("automation", "📊", " Dashboard", tab_automation.create_automation_tab),
                ("customers", "👥", " Clientes", tab_customers.create_customers_tab), 
                ("pending", "🔔", " Pendências", tab_pending_messages.create_pending_tab),
            ],
            "VENDAS": [
                ("purchases", "💲", " Compras", tab_purchases.create_purchases_tab),
                ("budgets", "📝", " Orçamentos", tab_budgets.create_budgets_tab),
                ("leads", "🎯", " Leads", tab_leads.create_leads_tab),
            ],
            "GESTÃO": [
                ("products", "📦", " Produtos", tab_products.create_products_tab),
                ("reports", "📈", " Relatórios", tab_reports.create_reports_tab),
                ("editor", "✉️", " Editor Msg", tab_message_editor.create_tab),
                # ABA DE VERSÃO (AUTOMÁTICA)
                ("version", "🚀", f" Versão {APP_VERSION}", create_version_tab)
            ]
        }

        for section, items in sidebar_config.items():
            ttk.Label(self.sidebar_frame, text=section, style="Sidebar.TLabel").pack(fill=X, padx=15, pady=(15, 5))
            for key, icon, text, creator in items:
                btn = ttk.Button(
                    self.sidebar_frame, 
                    text=f" {text}", 
                    image="",
                    compound=LEFT,
                    command=partial(self.show_page, key), 
                    bootstyle='secondary-outline' 
                )
                btn.pack(fill=X, pady=2, padx=5)
                self.pages[key] = {'creator': creator, 'frame': None}
        
        self.content_frame = ttk.Frame(main_pane)
        main_pane.add(self.content_frame, weight=6)

    def show_page(self, page_key):
        if self.current_page_key and self.pages[self.current_page_key]['frame']:
            self.pages[self.current_page_key]['frame'].pack_forget()

        if not self.pages[page_key]['frame']:
            try:
                self.pages[page_key]['frame'] = self.pages[page_key]['creator'](self.content_frame)
            except Exception as e:
                messagebox.showerror("Erro na Interface", f"Não foi possível abrir a aba '{page_key}':\n{e}")
                return

        self.pages[page_key]['frame'].pack(fill=BOTH, expand=YES, padx=20, pady=20)
        self.current_page_key = page_key
        
        if hasattr(self.pages[page_key]['frame'], 'refresh_data'):
             try: self.pages[page_key]['frame'].refresh_data()
             except: pass
        

if __name__ == "__main__":
    multiprocessing.freeze_support()
    
    if '--run-automation' in sys.argv:
        try:
            from automation_service import main_loop
            main_loop()
        except Exception as e:
            print(f"Erro no serviço de automação: {e}")
    else:
        try:
            app_root = ttk.Window() 
            app = ConfortecApp(app_root)
            debug_print("Loop principal iniciado!")
            app_root.mainloop()
        except Exception as e:
            print(f"ERRO FATAL NO LOOP: {e}")
            input("Pressione ENTER...")