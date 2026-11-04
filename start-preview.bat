@echo off
chcp 65001 >nul
title CH3 听音背词 - 本地预览
cd /d "%~dp0"

set PY=C:\Users\Hi\.workbuddy\binaries\python\versions\3.13.12\python.exe
if not exist "%PY%" set PY=python

echo 正在启动本地服务 http://127.0.0.1:8806 ...
echo 关闭这个黑窗口 = 停止播放服务
start "" http://127.0.0.1:8806/index.html
"%PY%" -m http.server 8806 --bind 127.0.0.1
