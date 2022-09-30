" Designed for vim 8+. 
" This vimrc is based on rwxrob's vimrc,
" https://github.com/rwxrob/dot/blob/main/vim/.vimrc
" See https://youtu.be/3mRBUUTL2Uo for rwxrob's breakdown of his vimrc

" vim-tiny lacks 'eval', according to rwxrob this makes the vimrc work in
" tinyvim. see his video for more info
if has("eval")
	let skip_defaults_vim = 1
endif

" Sets vi compatible mode to off(use nvi for original vi editing)
set nocompatible


" ################# Vi compatible (~/.exrc) ####################


" automatically indent new lines
set autoindent

" automatically write files when changing when multiple files are open
set autowrite

" Activates line numbers
set number

" turn col and row position on in the bottom right
set ruler " see :h rulerformat for more

" sets it to show insert, replace or visual mode at the bottom when you're in them
set showmode

set tabstop=2

" ##############################################################


" disable visual bell
set t_vb=

" Not sure what this does, not sure it's needed
let mapleader=","

set softtabstop=2

" sets shiftwidth width (when you are in normal mode press >> or << and it will
" indent or go back this many spaces)
set shiftwidth=2

" does the smart indenting, see :h smartindent
set smartindent

" sets smarttab, when smarttab is on it inserts blanks(whatever expand tab is
" set to) according to shiftwidth. See :h smarttab for more info
set smarttab

" conditional to check if vim is version 8 or higher. see :h v:version
if v:version >= 800

	" stops vim from silently messing with files that it shouldn't. ie messes
	" with line endings(see rwxrobs video for more info)
	set nofixendofline

	" ascii friendly charactors for when you want to see invisible charactors
	" with :set list
	set listchars=space:*,trail:*,nbsp:*,extends:>,precedes:<,tab:\|>

	" turns of automatic folding
	set foldmethod=manual

	" makes all folds open
	set nofoldenable

endif

" mark trailing spaces as errors(this is from rwxrobs, i dont know if i want
" it, so it will be commented out for now
" match IncSearch '\s\+$'

" Sets how wide the insert text can be (ie when it wraps line)
" set textwidth=80

" Sets a colored column in the vim terminal(for example you can set it to see where
" your textwidth ends, like here) the +4 setting uses the textwidth then
" +4 to indicate where the column should go(it's +4 here and not +1 because line
" numbers are turned on, and they take up 3 columns)
" set colorcolumn=+4

" Sets the color of the colorcolumn
" :hi ColorColumn ctermbg=lightGreen guibg=lightgrey

" Sets tabs to equivelent amount of spaces
set expandtab

" disables relative line numbers
set norelativenumber

" makes an underline where ever the cursor is
" set cursorline

" make ~ (it represents blank lines) effectively invisible
" highlight NonText guifg=bg

" turn on defaust spell checking
" set spell

" disable spellcapcheck(it checks for a capital as the next word to find the
" end of a sentence) see :h spellcapcheck
set spellcapcheck=

" riskier, but keeps your files and folders cleaner
set nobackup
set noswapfile
set nowritebackup

" no sure what this does, neither does rwxrob. He thought it had something to
" do with tmux window titles or something. Leaving it in
set icon

" cursor is always centred on the screen, can be changed to have an amount of
" give
 set scrolloff=8

" highlight search hits
set hlsearch
set incsearch
set linebreak

" makes it to avoid most of the 'Hit Enter ...' type messages
set shortmess=aoOtTI

" prevents truncated yanks, deletes, etc. (super important if im using the vim
" buffers to paste stuff to a different file, although probably a bad practise
" to do that)
set viminfo='20,<1000,s1000

" command history
set history=100

" disable bracket matching
" if eval is the vimtiny check
if has("eval")
  let g:loaded_matchparen=1
endif
set noshowmatch

" search wrap around file
set wrapscan

" rwxrob says plugins need this
if has("syntax")
  syntax enable
endif

" faster scrolling
set ttyfast

" allow sensing the filetype
filetype plugin on

" high contrast background
" set background=dark

" rwxrob has a bunch of colors and stuff about here in his vimrc if i want to
" check it out check video around 1.54.00 

" remappings, one to edit vimrc and one to reload the vimrc without having to
" restart the current session. nnoremap is for normal mode remapping, see :h
" mapmode-n
" nnoremap confe :e $HOME/.vimrc<CR>
" nnoremap confr :source $HOME/.vimrc<CR>

" this is rwxrobs custom ruler
" set ruf=%30(%=%#LineNr#%.50F\ [%{strlen(&ft)?&ft:'none'}]\ %l:%c\ %p%%%)

" Rob recommeds to use the Plug pluggin manager, as it doesn't mess around with
" you stuff, and it help to keep everything clean and separated. see his video
" for more
" this conditional makes it so the plugins only load if Plug is present
if filereadable(expand("~/.vim/autoload/plug.vim"))

  " github.com/junegunn/vim-plug
  
  " this path can be changed to where i want to put the plugins
  call plug#begin('~/.local/share/vim/plugins')
endif

" maps Y to act the same way as D and C (in that it goes to the end of line)
map Y y$

" mapping for function keys, the ! at the end before <CR> is to make it so you
" can turn the thing on and off
map <F1> :set number!<CR>
map <F2> :set relativenumber!<CR>
set pastetoggle=<F3>   " not sure why its done this way, i just copied rwxrob
map <F4> :set list!<CR>
map <F5> :set cursorline!<CR>
map <F6> :set nohlsearch!<CR>
map <F7> :set spell!<CR>
" map <F12> :set fdm=indent<CR>

" maps page down(originally ctrl-d) to same as lynx(ctrl-n)
" noremap <C-n> <C-d>

" maps page up(originally ctrl-b) to same as lynx(ctrl-p)
" noremap <C-p> <C-b>

" setups up other vim configs that can be used, see rwxrob video(around
" 3.20.00ish) and also see :h rtp
" set rtp^=~/.vimpersonal  "this is from rwxrobs vimrc
" set rtp^=~/.vimprivate  "this is from rwxrobs vimrc
" set rtp^=~/.vimwork  "this is from rwxrobs vimrc
