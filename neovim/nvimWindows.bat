@echo off

rem start nvim with the init.lua in this directory
nvim.exe --clean -u "%~dp0init.vim" %*
