@echo off
setlocal enabledelayedexpansion
title Pesa Chart - Push to GitHub

echo ============================================
echo   Pesa Chart - One-click GitHub push
echo ============================================
echo.

where git >nul 2>nul
if errorlevel 1 (
    echo Git is not installed or not on PATH.
    echo Install it from https://git-scm.com/downloads and try again.
    echo.
    pause
    exit /b 1
)

if not exist ".git" (
    echo Initializing new git repository...
    git init
    git branch -M main
    echo.
)

git add -A

set COMMITMSG=
set /p COMMITMSG=Commit message (press Enter for default): 
if "%COMMITMSG%"=="" set COMMITMSG=Update Pesa Chart

git commit -m "%COMMITMSG%"
if errorlevel 1 (
    echo.
    echo Nothing new to commit, or commit failed. Continuing to push anyway...
    echo.
)

git remote get-url origin >nul 2>nul
if errorlevel 1 (
    echo.
    echo No remote configured yet.
    set REPOURL=
    set /p REPOURL=Paste your GitHub repo URL (e.g. https://github.com/username/pesa-chart.git): 
    if "!REPOURL!"=="" (
        echo No URL entered. Aborting.
        pause
        exit /b 1
    )
    git remote add origin "!REPOURL!"
)

echo.
echo Pushing to GitHub...
git push -u origin main

echo.
echo Done. If this is the first push, enable GitHub Pages under
echo Settings -^> Pages -^> Branch: main -^> / (root) in your repo.
echo.
pause
