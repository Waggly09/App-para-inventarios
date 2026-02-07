@echo off
setlocal
cd /d "%~dp0\.."
set PYTHONPATH=%cd%\src

if exist ".venv\Scripts\activate.bat" (
  call .venv\Scripts\activate.bat
)

py -3 scripts\diagnostico_db.py
pause
