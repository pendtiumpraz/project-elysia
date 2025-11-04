@echo off
echo ========================================
echo  Pushing to GitHub
echo ========================================
echo.
cd /d "D:\auto\elysia"
echo Current directory: %CD%
echo.
echo Checking git status...
git status
echo.
echo Pushing to origin main...
git push -u origin main
echo.
if %errorlevel% equ 0 (
    echo ========================================
    echo  SUCCESS! Repository pushed!
    echo ========================================
    echo.
    echo Repository: https://github.com/pendtiumpraz/project-elysia
    echo.
    echo Buka browser untuk melihat:
    start https://github.com/pendtiumpraz/project-elysia
) else (
    echo ========================================
    echo  ERROR! Push failed!
    echo ========================================
    echo.
    echo Pastikan repository sudah dibuat di GitHub
    echo Buka: https://github.com/new
)
echo.
pause
