@echo off
set "ROOT=%~dp0"
if not exist "%ROOT%_build" mkdir "%ROOT%_build"
gcc "%ROOT%experiment-30\count_consonants.c" -o "%ROOT%_build\exp30.exe" || exit /b 1
echo Compiler Design | "%ROOT%_build\exp30.exe"
