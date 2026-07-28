@echo off
:: yt.bat - Search YouTube from CMD

if "%~1"=="" (
    echo Usage: yt your search terms
    exit /b
)

setlocal enabledelayedexpansion
set "query="
:loop
if "%~1"=="" goto done
set "query=!query!%~1+
shift
goto loop

:done
start "" "https://www.youtube.com/results?search_query=!query!"
endlocal
