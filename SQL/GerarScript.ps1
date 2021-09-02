$Versao = '_v0.1'

$Data  = Get-Date -Format "dd_MM_yyyy_HHmmssffff"
$Local = (Get-Location)
New-Item -Path $Local\$Data$Versao.sql -ItemType File