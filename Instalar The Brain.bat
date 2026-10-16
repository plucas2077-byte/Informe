@echo off
chcp 65001 >nul
setlocal
title Instalar The Brain
set "DIR=%~dp0"
set "BROWSER="
for %%P in ("%ProgramFiles(x86)%\Microsoft\Edge\Application\msedge.exe" "%ProgramFiles%\Microsoft\Edge\Application\msedge.exe" "%ProgramFiles%\Google\Chrome\Application\chrome.exe" "%ProgramFiles(x86)%\Google\Chrome\Application\chrome.exe" "%LocalAppData%\Google\Chrome\Application\chrome.exe") do (
  if not defined BROWSER if exist %%P set "BROWSER=%%~P"
)
if not defined BROWSER (
  echo No encuentro Microsoft Edge ni Google Chrome en este ordenador.
  pause
  exit /b 1
)
if not exist "%DIR%index.html" (
  echo No encuentro index.html. Deja este archivo en la misma carpeta que index.html.
  pause
  exit /b 1
)
if not exist "%DIR%datos" mkdir "%DIR%datos"
powershell -NoProfile -ExecutionPolicy Bypass -Command "$d=$env:DIR; $url=([System.Uri](Join-Path $d 'index.html')).AbsoluteUri; $prof=Join-Path $d 'perfil'; $a='--app=\"'+$url+'\" --user-data-dir=\"'+$prof+'\" --no-first-run --no-default-browser-check --disable-sync --window-size=1440,900'; $ws=New-Object -ComObject WScript.Shell; foreach($f in @([Environment]::GetFolderPath('Desktop'), [Environment]::GetFolderPath('Programs'))){ $l=$ws.CreateShortcut((Join-Path $f 'The Brain.lnk')); $l.TargetPath=$env:BROWSER; $l.Arguments=$a; $l.IconLocation=(Join-Path $d 'the-brain.ico'); $l.WorkingDirectory=$d; $l.Description='The Brain'; $l.Save() }"
if errorlevel 1 (
  echo No se ha podido crear el acceso directo.
  pause
  exit /b 1
)
echo.
echo Listo. Ya tienes "The Brain" en el escritorio y en el menu Inicio.
echo.
echo - Funciona sin internet.
echo - Usa un perfil propio dentro de esta carpeta (sin cuenta de Google ni Microsoft, sin sincronizar).
echo - Tus partidos se guardan como archivos en la carpeta "datos".
echo.
echo Si mueves esta carpeta a otro sitio, vuelve a ejecutar este instalador.
echo.
pause
