# Script de automacao - Atualizar dashboard Leodagan

$ORIGEM = "C:\Users\GustavoAlvesdeSouza\OneDrive - PX Center\Área de Trabalho\10_Forecast\50_Projeções\30_Automação Salesforce\Base Automacao Leodagan.csv"
$DESTINO = "C:\Users\GustavoAlvesdeSouza\Desktop\mapa-ataque-Leodagan\Base Automacao Leodagan.csv"
$PASTA_REPO = "C:\Users\GustavoAlvesdeSouza\Desktop\mapa-ataque-Leodagan"

Write-Host "[$(Get-Date -Format 'dd/MM/yyyy HH:mm:ss')] Copiando CSV..." -ForegroundColor Cyan
Copy-Item -Path $ORIGEM -Destination $DESTINO -Force
Write-Host "✅ CSV copiado com sucesso!" -ForegroundColor Green

Write-Host "[$(Get-Date -Format 'dd/MM/yyyy HH:mm:ss')] Processando dados..." -ForegroundColor Cyan
Set-Location $PASTA_REPO
python update_dashboard.py

Write-Host "[$(Get-Date -Format 'dd/MM/yyyy HH:mm:ss')] Enviando para GitHub..." -ForegroundColor Cyan
git add .
git commit -m "Atualizar dados - $(Get-Date -Format 'dd/MM/yyyy HH:mm:ss')"
git push origin main

Write-Host "[$(Get-Date -Format 'dd/MM/yyyy HH:mm:ss')] ✅ Concluído!" -ForegroundColor Green