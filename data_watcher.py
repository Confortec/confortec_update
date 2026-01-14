import time
from database import get_db_connection

def watch_database(update_queue):
    print("INFO: Serviço de monitoramento de banco de dados iniciado.")
    
    last_counts = {
        'leads': 0,
        'customers': 0,
        'rules': 0
    }
    
    # 1. Obter contagens iniciais
    conn = get_db_connection()
    if conn:
        try:
            with conn.cursor() as cursor:
                # Contagem de Leads
                cursor.execute("SELECT COUNT(*) FROM leads")
                last_counts['leads'] = cursor.fetchone()[0]
                
                # Contagem de Clientes/Compras
                cursor.execute("SELECT COUNT(*) FROM compras_detalhadas")
                last_counts['customers'] = cursor.fetchone()[0]
                
                # Contagem de Regras de Automação
                cursor.execute("SELECT COUNT(*) FROM automacao_mensagens")
                last_counts['rules'] = cursor.fetchone()[0]
        except Exception as e:
            print(f"ERRO no watcher ao inicializar contagens: {e}")
        finally:
            conn.close()

    print(f"INFO: Contagens iniciais do BD: {last_counts}")

    # 2. Loop de verificação
    while True:
        time.sleep(3) # Verifica a cada 3 segundos
        
        conn = get_db_connection()
        if not conn:
            print("AVISO no watcher: Não foi possível conectar ao banco de dados.")
            time.sleep(5)
            continue

        try:
            with conn.cursor() as cursor:
                # --- Verifica Leads ---
                cursor.execute("SELECT COUNT(*) FROM leads")
                curr_leads = cursor.fetchone()[0]
                if curr_leads != last_counts['leads']:
                    update_queue.put('leads_updated')
                    last_counts['leads'] = curr_leads

                # --- Verifica Compras/Clientes ---
                cursor.execute("SELECT COUNT(*) FROM compras_detalhadas")
                curr_customers = cursor.fetchone()[0]
                if curr_customers != last_counts['customers']:
                    update_queue.put('customers_updated')
                    last_counts['customers'] = curr_customers

                # --- Verifica Regras ---
                cursor.execute("SELECT COUNT(*) FROM automacao_mensagens")
                curr_rules = cursor.fetchone()[0]
                if curr_rules != last_counts['rules']:
                    update_queue.put('rules_updated')
                    last_counts['rules'] = curr_rules
        
        except Exception as e:
            # Silencia erros momentâneos de conexão para não poluir o console, 
            # mas imprime erros de lógica se forem graves
            if "Table" in str(e): 
                print(f"ERRO FATAL DE TABELA NO WATCHER: {e}")
            pass
        finally:
            conn.close()