@echo off
setlocal
cd /d "%~dp0"
set PYTHONPATH=%cd%\src

if not exist ".venv\Scripts\activate.bat" (
  echo Primero ejecuta install_deps.bat
  pause
  exit /b 1
)

call .venv\Scripts\activate.bat

rmdir /s /q build 2>nul
rmdir /s /q dist 2>nul

pyinstaller --noconfirm --clean ^
  --name InventarioApp ^
  --add-data "data;data" ^
  --add-data "README.md;." ^
  --hidden-import tkinter ^
  --hidden-import sqlite3 ^
  src\app\main.py

echo.
echo EXE generado en dist\InventarioApp\InventarioApp.exe
pause
