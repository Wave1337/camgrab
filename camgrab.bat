@echo off
setlocal

rem === Edit this list to add/remove cams (space separated) ===
set "CAMS=ec-mainstreetpier ec-ponceinlet ec-newsmyrna"
set "BASE=https://camstills.cdn-surfline.com/us-east-2"

set "OUT=%~dp0camgrab"
if not exist "%OUT%" mkdir "%OUT%"
set "HTML=%OUT%\index.html"

> "%HTML%" echo ^<!doctype html^>^<html^>^<head^>^<meta charset="utf-8"^>^<title^>Cam Grab^</title^>
>> "%HTML%" echo ^<style^>body{background:#111;color:#eee;font-family:sans-serif;margin:16px}img{width:100%%;max-width:1280px;display:block;margin:4px 0 28px}h3{margin:0}.bad{color:#f66}^</style^>^</head^>^<body^>
>> "%HTML%" echo ^<p^>Grabbed %date% %time%^</p^>

for %%C in (%CAMS%) do (
  echo Grabbing %%C...
  del "%OUT%\%%C.jpg" 2>nul
  curl -s -f -o "%OUT%\%%C.jpg" "%BASE%/%%C/latest_full.jpg"
  if errorlevel 1 (
    >> "%HTML%" echo ^<h3 class="bad"^>%%C - FAILED^</h3^>^<br^>
  ) else (
    >> "%HTML%" echo ^<h3^>%%C^</h3^>^<img src="%%C.jpg"^>
  )
)

>> "%HTML%" echo ^</body^>^</html^>
start "" "%HTML%"
