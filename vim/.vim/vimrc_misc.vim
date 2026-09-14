
set nocompatible " Sets vi compatible mode to off (just use nvi for vi mode)

" ensures that Vim's default settings are loaded quietly without error messages.
" will restore cursor position
silent! source $VIMRUNTIME/defaults.vim 

filetype plugin on " enable loading of file type specific plugins and settings

set history=1000 " command history, vim default is 50

" persistant marks across sessions
" remember marks for this many of the last files accessed(max 10 000)
set viminfo='1000

" persistant command history(which includes search history) across sessions
" keep a history of this many lines of command line input(max 10 000)
set viminfo+=<1000

" persistant registers across sessions
" save up to this many characters of text from registers(max 1 000 000)
set viminfo+=s1000000

" save and restore manually created folds across sessions
set viewoptions=folds

" makes it avoid most of the 'Hit Enter ...' type messages
set shortmess=aoOtTI

" stop vim from adding newline to the end of a file
set nofixendofline

" search wraps from bottom of file back to the top
set wrapscan

" ascii friendly invisible characters
set listchars=space:·,trail:•,nbsp:*,extends:>,precedes:<,tab:\│\>

set list " turns on invisible characters

set foldmethod=manual " manual folding
"set foldmethod=syntax " automatic folds on syntax
"set foldmethod=indent " folds on indents
"set foldmethos= expr " folds on whatever expr is set with foldexpr
"set foldmethod=marker " folds on user defined markers

set foldmarker={{{,}}} " set the fold markers to {{{ and }}}

"set nofoldenable " if some folds where folded this will open them

set foldcolumn=2

set autoindent " automatically indent new lines

set breakindent " indenting for wrapped lines

set autowrite " automatically save the current file when switching between files

set showcmd " shows the commands your using in the bottom tray

set number " Sets line numbers

set cursorline " sets the cursor line to highlight

set cursorlineopt=number " changes cursor line to only highlight numbers

set norelativenumber " disables relative line numbers

set showmode " Shows current mode in tray

set t_vb= " disable visual bell

" Make Tab key respect shiftwidth for indentation and tabstop elsewhere
set smarttab

set tabstop=4 " sets the visual representation of tabwidth

set softtabstop=4 " softtabstop, 

"set expandtab " Sets tabs to equivelent amount of spaces

" sets shiftwidth width (when you are in normal mode press >> or << and
" it will indent or undent
set shiftwidth=4

set smartindent " Sets smart indenting

"match IncSearch '\s\+$' " mark trailing spaces as errors

" Sets how wide inserted text can be (ie when horizontal lines will be wrapped)
set textwidth=130

" Sets a colored column in the vim terminal(can have multiple separated by ,)
set colorcolumn=130

" set time out length in milliseconds(ie. for leaderkey timeout)
set timeout timeoutlen=2000

"set spell " turn on default spell checking

" Disable checking for capitalization at the start of sentences during spell
" check
set spellcapcheck=

set ignorecase " ignore case during search

" if search query contains uppercase, vim will switch to case sensitive search
set smartcase

set nobackup " Disable creating backup files (~ files) when saving

" Disable creating swap files (.swp), which disables crash recovery
"set noswapfile

" store swapfiles in a custom location/directory
set directory^=$HOME/.vim/swapfiles//

set nowritebackup " Disable creating temporary backup files during file writes

" Sets the icon text for the Vim window (only affects gVim on X11 GUIs),
" might affect tmux titles
set icon

" Keep at least 8 lines of context visible above and below the cursor while
" scrolling
set scrolloff=8

set hlsearch " set highlight search hits

"set incsearch " displays the match when your only partially through typing it

set linebreak " linebreak wraps at work boundaries instead of mid word

set showbreak=>>\  " shows >> at the begginning of wrapped lines

"let g:loaded_matchparen=1 " turns bracket matching off

"set showmatch " cursor quickly jumps to a matching bracket

set ttyfast " faster scrolling

"set path+=** " Sets up a way to do fuzzy finding. see max cantor's presentation

set wildmenu " Display all matching files when we tab complete

syntax enable " Set syntax on

" ##############################################################################
" key maps

let mapleader="," " set mapleader key

" nerdtree open/close toggle
nnoremap <LEADER>n :NERDTreeToggle<CR> 

" remap split window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k

" map Y to act the same way as D and C (in that it does the action to the end
" of line)
nnoremap Y y$

" map H to move to the beginning of the word
nnoremap H b

" map L to move to the end of the word
nnoremap L w

" mapping for function keys, the ! at the end before <CR> is to make it so you
" can toggle on and off
map <F1> :set number!<CR>
map <F2> :set relativenumber!<CR>
map <F3> :set list!<CR>

" add line after without going into insert mode
nnoremap <leader>o o<esc>k

" maps \\ to turn off search highlighting
nnoremap \\ :nohlsearch<return>

