" Name:    Darkness
" License: The MIT License (MIT)
" Author:  Jorengarenar <dev@joren.ga>

" SETUP -----------------------------------------------------------------------

set background=dark
hi clear
if exists('syntax on') | syntax reset | endif
let g:colors_name='darkness_gbjn'

" Cursor shape mode swap ------------------------------------------------------
" 1 or·0·->·blinking·block
"·2·->·solid·block
"·3·->·blinking·underscore
"·4·->·solid·underscore
"·Recent·versions·of·xterm·(282·or·above)·also·support
"·5·->·blinking·vertical·bar
"·6·->·solid·vertical·bar

"·Insert·Mode
let &t_SI .= "\<Esc>[5 q"
"·Normal·Mode
let &t_EI .= "\<Esc>[1 q"

" HIGHLIGHTS ------------------------------------------------------------------

hi! ColorColumn     cterm=NONE            ctermfg=NONE  ctermbg=233
hi! Comment         cterm=NONE            ctermfg=240   ctermbg=NONE
hi! Conceal         cterm=italic          ctermfg=225   ctermbg=NONE
hi! CursorColumn    cterm=NONE            ctermfg=NONE  ctermbg=234
hi! CursorLine      cterm=NONE            ctermfg=NONE  ctermbg=234
hi! CursorLineNr    cterm=NONE            ctermfg=15    ctermbg=NONE
hi! DiffAdd         cterm=NONE            ctermfg=2     ctermbg=NONE
hi! DiffChange      cterm=NONE            ctermfg=15    ctermbg=NONE
hi! DiffDelete      cterm=NONE            ctermfg=9     ctermbg=NONE
hi! DiffText        cterm=NONE            ctermfg=6     ctermbg=NONE
hi! ErrorMsg        cterm=NONE            ctermfg=7     ctermbg=1
hi! FoldColumn      cterm=NONE            ctermfg=240   ctermbg=NONE
hi! Folded          cterm=italic          ctermfg=245   ctermbg=NONE
hi! IncSearch       cterm=NONE            ctermfg=240   ctermbg=11
hi! LineNr          cterm=NONE            ctermfg=240   ctermbg=NONE
hi! MatchParen      cterm=NONE            ctermfg=249   ctermbg=240
hi! MoreMsg         cterm=bold            ctermfg=240   ctermbg=NONE
hi! NonText         cterm=NONE            ctermfg=240   ctermbg=NONE
"hi! Normal          cterm=NONE            ctermfg=249   ctermbg=16
hi! Normal          cterm=NONE            ctermfg=NONE   ctermbg=NONE
hi! Pmenu           cterm=NONE            ctermfg=249   ctermbg=233
hi! PmenuSel        cterm=NONE            ctermfg=249   ctermbg=236
hi! Question        cterm=NONE            ctermfg=9     ctermbg=NONE
hi! QuickFixLine    cterm=underline       ctermfg=NONE  ctermbg=NONE
hi! Search          cterm=NONE            ctermfg=249   ctermbg=240
hi! SignColumn      cterm=NONE            ctermfg=NONE  ctermbg=16
hi! SpecialKey      cterm=NONE            ctermfg=236  ctermbg=NONE
hi! StatusLine      cterm=NONE            ctermfg=245   ctermbg=233
hi! StatusLineNC    cterm=NONE            ctermfg=240   ctermbg=234
hi! StatusLineTerm  cterm=NONE            ctermfg=0     ctermbg=121
hi! TabLine         cterm=NONE            ctermfg=240   ctermbg=234
hi! TabLineFill     cterm=NONE            ctermfg=249   ctermbg=234
hi! TabLineSel      cterm=NONE            ctermfg=249   ctermbg=233
hi! Title           cterm=bold            ctermfg=NONE  ctermbg=NONE
hi! Todo            cterm=bold,underline  ctermfg=15    ctermbg=NONE
hi! Underlined      cterm=underline       ctermfg=249   ctermbg=NONE
hi! VertSplit       cterm=NONE            ctermfg=234   ctermbg=234
hi! Visual          cterm=NONE            ctermfg=NONE  ctermbg=236
hi! WarningMsg      cterm=NONE            ctermfg=16    ctermbg=3
hi! WildMenu        cterm=NONE            ctermfg=249   ctermbg=236

hi! link Constant   Normal
hi! link Identifier Normal
hi! link Statement  Normal
hi! link PreProc    Normal
hi! link Type       Normal
hi! link Special    Normal
hi! link ModeMsg    MoreMsg
