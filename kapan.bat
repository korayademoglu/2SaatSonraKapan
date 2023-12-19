@echo off
set /p "kapanma_suresi=Kapanma suresini saat cinsinden girin: "
echo Bilgisayar, %kapanma_suresi% saat içinde kapanacak.
set /a "kapanma_suresi_saniye=%kapanma_suresi%*3600"
timeout /t %kapanma_suresi_saniye%
shutdown /s /f /t 0