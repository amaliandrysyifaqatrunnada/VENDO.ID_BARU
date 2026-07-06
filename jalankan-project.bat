@echo off
title Vendo.id Startup Tool
echo =======================================================
echo     MEMULAI APLIKASI VENDO.ID UNTUK UAS OJAN
echo =======================================================
echo.
echo [1/3] Menjalankan Server Backend (API Port 5000)...
start "Backend Server - Vendo.id" cmd /c ""C:\Users\Mahasiswa\AppData\Local\ms-playwright-go\1.57.0\node.exe" server.js"

echo [2/3] Menjalankan Client Frontend (Vite Port 5173)...
start "Frontend Client - Vendo.id" cmd /c ""C:\Users\Mahasiswa\AppData\Local\ms-playwright-go\1.57.0\node.exe" node_modules/vite/bin/vite.js"

echo.
echo [3/3] Menunggu server menyala, lalu membuka browser...
timeout /t 4 >nul
start http://localhost:5173

echo.
echo =======================================================
echo   Aplikasi berhasil dijalankan! 
echo   Jangan tutup jendela CMD Backend dan Frontend.
echo =======================================================
echo.
pause
