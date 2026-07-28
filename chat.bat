@echo off
set /p query=Enter your ChatGPT prompt: 

:: Replace spaces with %%20
set "query=%query: =%%20%"

start chrome --incognito "https://chatgpt.com/?q=%query%"
exit