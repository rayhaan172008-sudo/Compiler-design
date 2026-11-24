@echo off
set "ROOT=%~dp0"
if not exist "%ROOT%_build" mkdir "%ROOT%_build"
win_flex -o "%ROOT%_build\exp39.lex.yy.c" "%ROOT%experiment-39\replace_word.l" || exit /b 1
gcc "%ROOT%_build\exp39.lex.yy.c" -o "%ROOT%_build\exp39.exe" || exit /b 1
echo Compiler design is useful. | "%ROOT%_build\exp39.exe" design DESIGN
