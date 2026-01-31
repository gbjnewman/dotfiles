@echo off

set "CurrentFolder=%~dp0"

rmdir /S /Q "%LOCALAPPDATA%\nvim"
mklink /D "%LOCALAPPDATA%\nvim" "%CurrentFolder%"
