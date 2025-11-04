@echo off
echo ========================================
echo  GitHub Repository Setup
echo ========================================
echo.
echo Repository sudah siap di: D:\auto\elysia
echo.
echo Langkah-langkah:
echo 1. Membuka GitHub untuk buat repository...
echo 2. Nama repo: project-elysia
echo 3. Deskripsi: 30 Anime-themed UI designs for ElysiaJS
echo 4. Pilih: Public
echo 5. JANGAN centang "Add README"
echo.
pause
echo.
echo Membuka GitHub...
start https://github.com/new?name=project-elysia^&description=30+Anime-themed+UI+designs+for+ElysiaJS
echo.
echo Setelah repository dibuat, tekan sembarang tombol untuk push...
pause
echo.
echo Pushing to GitHub...
cd /d "D:\auto\elysia"
git push -u origin main
echo.
echo ========================================
echo  SELESAI!
echo ========================================
echo.
echo Repository URL: https://github.com/pendtiumpraz/project-elysia
echo.
pause
