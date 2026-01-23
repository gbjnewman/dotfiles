@echo off

if not defined nvimbat (
  set "nvimbat=%USERPROFILE%\repos\github\dotfiles\neovim\nvimWindows.bat"
)
doskey nvim=call "%nvimbat%" $*
doskey vim=call "%nvimbat%" $*
doskey vi=call "%nvimbat%" $*

doskey ls=dir $*
doskey ll=dir $*
doskey clear=cls
doskey alias=doskey /macros