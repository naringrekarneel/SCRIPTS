@echo off
set /p query=Enter your prompt: 

:: Replace spaces with %%20
set "query=%query: =%%20%"

start "" brave.exe "https://chatgpt.com/c/6a886d0c-7b28-83ee-836f-0e4970b99957a?q=%query%"
exit
