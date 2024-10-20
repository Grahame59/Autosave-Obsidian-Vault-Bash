::-------------------------------------------------------------------------------------------------
::                 Autosave.Bat Script for an Obsidian Vault By IceTeaGameDev v1.0.0
::
:: This is a .bat script for an Obsidian Vault that will allow you to either run it in a bash,
:: CommandPrompt, Run the file by clicking on it, or call it from other processes like a subprocess
:: model in Python or Windows task scheduler, etc... It is very simple Pull command for concurency,
:: and then a add . (add all files in Directory), commit -m "yourcomment" (commit and stage the 
:: changes), and a final push to the branch of your choice (Most likely main or master).
::
::-------------------------------------------------------------------------------------------------


@echo off
echo Starting autosave script...

REM Change to the repository directory
cd /d "E:\Lorehaven\gitconnect" REM Change this to cd /d "yourPathHere" (your path is more likely to reside in a C: drive, where as mine is in my E: drive.)
if errorlevel 1 (
    echo Failed to change directory to gitconnect.
    exit /b
)

echo Current directory: %cd%

REM Pull latest changes
git pull origin main
if errorlevel 1 (
    echo Failed to pull changes from origin/main.
    exit /b
)

REM Stage all changes
git add .
if errorlevel 1 (
    echo Failed to add changes to the staging area.
    exit /b
)

REM Commit the changes
git commit -m "autosave"
if errorlevel 1 (
    echo Failed to commit changes.
    exit /b
)

REM Push the changes
git push origin main
if errorlevel 1 (
    echo Failed to push changes to origin/main.
    exit /b
)

echo Autosave completed successfully.
