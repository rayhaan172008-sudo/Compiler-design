@echo off
set "ROOT=%~dp0"
if not exist "%ROOT%_build" mkdir "%ROOT%_build"
win_flex -o "%ROOT%_build\exp38.lex.yy.c" "%ROOT%experiment-38\longest_word.l" || exit /b 1
gcc "%ROOT%_build\exp38.lex.yy.c" -o "%ROOT%_build\exp38.exe" || exit /b 1
echo Compiler design laboratory | "%ROOT%_build\exp38.exe"
