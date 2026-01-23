@echo off

::set "NVIM_INIT=%USERPROFILE%\repos\github\dotfiles\neovim\init.lua"
rem this makes it so that nvim_init is referencing the init.lua in the directory that this bat is in, %~dp0 references can be found on stackoverflow
set "NVIM_INIT=%~dp0init.lua"

if not exist "%NVIM_INIT%" (
  echo init.lua not found: "%NVIM_INIT%"
  exit /b 1
)

nvim.exe --clean -u "%NVIM_INIT%" %*