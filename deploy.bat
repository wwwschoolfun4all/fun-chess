@echo off
echo Fun Chess Website Deployment Helper
echo ==================================
echo.
echo Choose deployment option:
echo 1. Start local server
echo 2. Prepare for GitHub Pages
echo 3. Prepare for Netlify/Vercel
echo 4. Exit
echo.
set /p choice="Enter your choice (1-4): "

if "%choice%"=="1" (
    echo Starting local server...
    echo Your website will be available at http://localhost:8000
    echo Press Ctrl+C to stop the server
    python -m http.server 8000
)

if "%choice%"=="2" (
    echo Preparing for GitHub Pages deployment...
    echo.
    echo Steps for GitHub Pages:
    echo 1. Create a new repository on GitHub
    echo 2. Run these commands:
    echo    git init
    echo    git add .
    echo    git commit -m "Initial commit"
    echo    git branch -M main
    echo    git remote add origin https://github.com/username/repository.git
    echo    git push -u origin main
    echo 3. Go to repository Settings ^> Pages
    echo 4. Select main branch and save
    echo.
    pause
)

if "%choice%"=="3" (
    echo Preparing for Netlify/Vercel deployment...
    echo.
    echo For Netlify:
    echo 1. Go to netlify.com
    echo 2. Drag and drop this folder
    echo.
    echo For Vercel:
    echo 1. Install Vercel CLI: npm i -g vercel
    echo 2. Run: vercel
    echo.
    pause
)

if "%choice%"=="4" exit
