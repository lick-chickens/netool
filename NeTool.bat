@echo off
title NeTool by chung.digital
echo Welcome to NeTool, generating profile list...
netsh wlan show profiles
set /p PROFILE=Profile: 
netsh wlan show profile name="%PROFILE%" key=clear | find /I "Key Content"
pause