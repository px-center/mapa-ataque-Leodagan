import pandas as pd
from datetime import datetime
import json

# Ler o CSV
csv_path = "Base Automacao Leodagan.csv"
print(f"📖 Lendo {csv_path}...")

try:
    df = pd.read_csv(csv_path, encoding='utf-8-sig', sep=';')
except:
    try:
        df = pd.read_csv(csv_path, encoding='latin-1', sep=';')
    except:
        df = pd.read_csv(csv_path)

print(f"✅ {len(df)} linhas carregadas")
print(f"📋 Colunas detectadas: {len(df.columns)}")

# Processar dados simples
clientes_lista = []
for idx, row in df.iterrows():
    nome = str(row.iloc[10]) if len(row) > 10 else f'Cliente {idx}'
    clientes_lista.append({
        'id': idx,
        'nome': nome.strip()[:50],
        'status': 'Ativo'
    })

print(f"🔄 {len(clientes_lista)} clientes processados")

# Ler HTML
html_path = "mapa-ataque_graph.html"
with open(html_path, 'r', encoding='utf-8') as f:
    html_content = f.read()

# Criar JSON seguro
dados_json = json.dumps(clientes_lista)

# Adicionar ao HTML (antes de </body>)
script_tag = f'''<script>
var CLIENTES_DADOS = {dados_json};
console.log('Dados carregados:', CLIENTES_DADOS.length, 'clientes');
</script>'''

if '</body>' in html_content:
    html_content = html_content.replace('</body>', script_tag + '\n</body>')
else:
    html_content = html_content + script_tag

# Salvar HTML atualizado
with open(html_path, 'w', encoding='utf-8') as f:
    f.write(html_content)

print(f"✨ HTML atualizado: {html_path}")
print(f"✅ Script salvo com {len(clientes_lista)} registros")
print(f"⏰ Concluído em {datetime.now().strftime('%H:%M:%S')}")