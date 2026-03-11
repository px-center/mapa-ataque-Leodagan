# 🎯 Mapa de Ataque - Rota do Sucesso (Leodagan)

Dashboard interativo para análise e gestão de clientes em risco na Rota do Sucesso.

## 📊 Sobre

Este projeto automiza a atualização diária de um dashboard com dados de clientes em diferentes estágios da Rota do Sucesso:
- **Ativado** - Clientes novos
- **Autonomia** - Clientes em desenvolvimento
- **Rota Guiada** - Clientes com suporte ativo
- **Piloto** - Clientes em teste
- **Embarque** - Clientes em fase final
- **Churn** - Clientes em risco

## 🚀 Como Funciona
```
CSV (OneDrive/Salesforce)
        ↓
Python Script (update_dashboard.py)
        ↓
HTML Dashboard Atualizado
        ↓
Git Push → GitHub
        ↓
GitHub Pages (Online)
```

## 📁 Arquivos

- `mapa-ataque_graph.html` - Dashboard interativo com Chart.js
- `update_dashboard.py` - Script de processamento de dados
- `Base Automacao Leodagan.csv` - Dados dos clientes
- `atualizar_dashboard.bat` - Automação em batch (opcional)
- `atualizar_dashboard.ps1` - Automação em PowerShell (opcional)

## ⏰ Automação

### Windows Task Scheduler
A tarefa **"Atualizar Dashboard Leodagan"** roda diariamente às **11:00**.

**Configuração:**
- Programa: `python.exe`
- Argumento: `update_dashboard.py`
- Diretório: `C:\Users\GustavoAlvesdeSouza\Desktop\mapa-ataque-Leodagan`

### Manual
Para atualizar manualmente:
```powershell
cd C:\Users\GustavoAlvesdeSouza\Desktop\mapa-ataque-Leodagan
python update_dashboard.py
git add .
git commit -m "Atualizar dados"
git push origin main
```

## 📊 Dados

- **Total de Clientes:** 843
- **Data de Atualização:** Diária às 11:00
- **Fonte:** `Base Automacao Leodagan.csv` (OneDrive/Salesforce)

## 🔗 Links

- **GitHub:** https://github.com/px-center/mapa-ataque-Leodagan
- **Dashboard Online:** https://px-center.github.io/mapa-ataque-Leodagan/

## 📝 Fórmula KPI
```
Pontos = FC × FD × FRec × FJ × FTier × 9
```

Onde:
- **FC** = Fator de Contratos
- **FD** = Fator de Dias
- **FRec** = Fator de Recomendação
- **FJ** = Fator de Jornada
- **FTier** = Fator de Tier

## 👨‍💼 Proprietário

**Gustavo Alves de Souza** - PX Center / Leodagan

## 📅 Histórico

- **11/03/2026** - Implementação completa com automação Windows Task Scheduler
- **10/03/2026** - Deploy inicial no GitHub Pages
```

**Salve como:** `README.md` (na pasta do repositório)
```
C:\Users\GustavoAlvesdeSouza\Desktop\mapa-ataque-Leodagan\