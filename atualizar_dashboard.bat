@echo off
REM Script de automacao - Atualizar dashboard Leodagan

REM Definir caminhos
set ORIGEM="C:\Users\GustavoAlvesdeSouza\OneDrive - PX Center\Área de Trabalho\10_Forecast\50_Projeções\30_Automação Salesforce\Base Automacao Leodagan.csv"
set DESTINO="C:\Users\GustavoAlvesdeSouza\Desktop\mapa-ataque-Leodagan\Base Automacao Leodagan.csv"
set PASTA_REPO=C:\Users\GustavoAlvesdeSouza\Desktop\mapa-ataque-Leodagan

REM Copiar CSV
echo [%date% %time%] Copiando CSV...
copy "%ORIGEM%" "%DESTINO%"

REM Ir para pasta do repositório
cd /d "%PASTA_REPO%"

REM Rodar script Python
echo [%date% %time%] Processando dados...
python update_dashboard.py

REM Git commit e push
echo [%date% %time%] Enviando para GitHub...
git add .
git commit -m "Atualizar dados - %date% %time%"
git push origin main

echo [%date% %time%] Concluído!
pause
```

**Salve como:** `atualizar_dashboard.bat` na pasta:
```
C:\Users\GustavoAlvesdeSouza\Desktop\mapa-ataque-Leodagan\