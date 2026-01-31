@echo off

if not defined lfbat (
  set "lfbat=%USERPROFILE%\repos\github\dotfiles\lf\lfcd.bat"
)
doskey lf=call "%lfbat%" $*

doskey vc=call "%USERPROFILE%\repos\github\dotfiles\cmd\bat\vcvars.bat"

doskey ls=eza $*
doskey ll=eza -lah $*
doskey clear=cls
doskey alias=doskey /macros
doskey rm=del $*
