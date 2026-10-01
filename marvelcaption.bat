@echo off
set /p query=Enter your prompt: 

:: Replace spaces with %%20
set "query=%query: =%%20%"

start "" brave.exe "https://gemini.google.com/app/c760a52adec869b3?q=%query%"
exit
