@echo off
:: quick-search.bat
:: Opens a Google search for whatever you type after 'search'

if "%~1"=="" (
    echo Usage: search your query here
    exit /b
)

setlocal enabledelayedexpansion
set "query="
:loop
if "%~1"=="" goto done
set "query=!query!%~1+"
shift
goto loop

:done
start "" "https://www.google.com/search?q=!query!"
endlocal
