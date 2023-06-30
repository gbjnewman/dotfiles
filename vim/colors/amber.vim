" Vim color file

set bg=dark
hi clear
if exists("syntax_on")
  syntax reset
endif

let colors_name = "amber"

" Basics
hi Normal           ctermfg=166      ctermbg=NONE
hi ErrorMsg         ctermfg=white      ctermbg=red
hi Visual           ctermfg=lightgrey  ctermbg=green
hi Todo             ctermfg=black      ctermbg=166
hi NonText          ctermfg=166
hi Question         ctermfg=166
hi MatchParen       ctermfg=166   ctermbg=166
hi LineNr           ctermfg=166         term=bold
hi Directory        ctermfg=166
hi Folded           ctermfg=black      ctermbg=darkgreen  gui=bold
hi ColorColumn                         ctermbg=darkgreen
hi Error                               ctermbg=brown
hi CursorLine       ctermfg=black      ctermbg=166
hi CursorLineNr                                                       cterm=none
hi TabLine                       	 ctermfg=darkgreen  ctermbg=NONE
hi SpecialKey   ctermfg=52

" Splitter
hi StatusLine       ctermfg=black      ctermbg=166      gui=none  term=none      cterm=none
hi StatusLineNC     ctermfg=black      ctermbg=darkgreen  gui=none  term=none      cterm=none
hi VertSplit        ctermfg=black      ctermbg=darkgreen  gui=none  term=none      cterm=none

" Popup menu
hi Pmenu            ctermfg=166 ctermbg=darkgreen
hi PmenuSel         ctermfg=darkgreen  ctermbg=166

" Code colors
hi Comment                       ctermfg=166  ctermbg=NONE
hi Constant                      ctermfg=166
hi Special                       ctermfg=166
hi Identifier                    ctermfg=166
hi Statement                     ctermfg=166                         gui=none
hi PreProc                       ctermfg=166
hi Type                          ctermfg=166                    gui=none
hi Underlined                    term=underline cterm=underline
hi Ignore       guifg=bg                      ctermfg=NONE
hi Operator                      ctermfg=166
hi Title        ctermfg=166

hi link String         Constant
hi link Character      Constant
hi link Number         Constant
hi link Boolean        Constant
hi link Float          Number
hi link Function       Identifier
hi link Conditional    Statement
hi link Repeat         Statement
hi link Label          Statement
hi link Operator       Statement
hi link Keyword        Statement
hi link Exception      Statement
hi link Include        PreProc
hi link Define         PreProc
hi link Macro          PreProc
hi link PreCondit      PreProc
hi link StorageClass   Type
hi link Structure      Type
hi link Typedef        Type
hi link SpecialChar    Special
hi link Delimiter      Special
hi link SpecialComment Special
hi link Debug          Special
