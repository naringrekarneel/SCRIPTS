@echo off
set /p query=Enter what you want to search on Pinterest: 
start "Brave" "brave.exe" "https://www.pinterest.com/search/pins/?q=%query%"
