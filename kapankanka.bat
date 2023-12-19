@echo off
set /p "kapanma_saati=Kapanma saati (HH:mm formatinda girin): "
echo Bilgisayar, %kapanma_saati% saatine kadar bekleyecek.
timeout /t 1
:kontrol
for /f "tokens=1,2 delims=:" %%i in ("%time%") do (
  set saat=%%i
  set dakika=%%j
)
if %saat%==%kapanma_saati:~0,2% (
  if %dakika% gtr %kapanma_saati:~3,2% (
    goto kapat
  )
)
timeout /t 60
goto kontrol
:kapat
shutdown /s /f /t 0
