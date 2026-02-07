# InventarioApp (Build v3.2)

App local (Windows) para control de inventario con **SQLite** (archivo `data/inventario.db`).

## Funciones
- Alta/edición de insumos (unidad, stock de seguridad, notas).
- **Movimiento rápido (IN/OUT) desde la pestaña Insumos**.
- Historial de movimientos.
- Alertas de bajo stock con pop-up (configurable en minutos).
- Ordenar por ID o alfabeto.

## Arranque (modo Python)
1) Ejecuta `install_deps.bat` (crea `.venv` e instala dependencias para build).
2) Ejecuta `run_app.bat`.

> Nota: para correr la app NO necesitas instalar SQLite. Python trae `sqlite3`.

## Ejecutable (portable)
1) Ejecuta `install_deps.bat`
2) Ejecuta `build_exe.bat`
3) Salida: `dist\InventarioApp\InventarioApp.exe`

## Base de datos
- La app usa: `data\inventario.db`
- Para migrar desde otra versión: copia tu DB a esa ruta (con la app cerrada).
- Backup rápido: en la pestaña Configuración hay un botón “Backup”.

## Diagnóstico
- Ejecuta `diagnostico_db.bat` para ver la ruta real y conteos de tablas.
- Si hay crash, revisa `logs\crash.log`.

