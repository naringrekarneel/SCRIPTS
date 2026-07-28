@echo off
title Close Apps and Instant Shutdown

echo ============================================
echo   Closing all running applications...
echo ============================================
echo.

taskkill /F /FI "STATUS eq RUNNING"

echo.
echo Shutting down immediately...

shutdown /s /f /t 0

exit