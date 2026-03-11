@echo off
REM Script de automacao - Atualizar dashboard Leodagan

set "ORIGEM=C:\Users\GustavoAlvesdeSouza\OneDrive - PX Center\Área de Trabalho\10_Forecast\50_Projeções\30_Automação Salesforce\Base Automacao Leodagan.csv"
set "DESTINO=C:\Users\GustavoAlvesdeSouza\Desktop\mapa-ataque-Leodagan\Base Automacao Leodagan.csv"
set "PASTA_REPO=C:\Users\GustavoAlvesdeSouza\Desktop\mapa-ataque-Leodagan"

REM Copiar CSV do OneDrive para o repo
copy /Y "%ORIGEM%" "%DESTINO%"

REM Ir para pasta do repositorio
cd /d "%PASTA_REPO%"

REM Git commit e push
git add "Base Automacao Leodagan.csv"
git commit -m "Atualizar dados - %date% %time%"
git push origin main
