@echo off
setlocal
cd /d "%~dp0"
set PYTHONPATH=%cd%\src

if exist ".venv\Scripts\activate.bat" (
  call .venv\Scripts\activate.bat
)

echo (Debug) Ejecutando app...
py -3 -m app.main
echo.
echo Si se cerro, revisa logs\crash.log
pause
