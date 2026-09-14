
" autoload plug pluggin manager if not present
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" initilise vim-plug and tell it where to install plugins
call plug#begin('~/.vim/plugged')

Plug 'https://github.com/preservim/nerdtree' " nerdtree file navigator

Plug 'christoomey/vim-tmux-navigator'

"Plug 'https://github.com/mattn/emmet-vim'
"Plug 'https://github.com/tpope/vim-surround'
"Plug 'https://github.com/tpope/vim-repeat'

call plug#end() " finalize plugin installation and loading

" ##############################################################################
" NERDTree settings

" set a text message in the status line
let NERDTreeStatusline='NERDTree - Press ? for help'

" map l to open file or directory (same as enter)
autocmd FileType nerdtree nmap <buffer> l <CR>

" map h to go up one directory
autocmd FileType nerdtree nmap <buffer> h :NERDTreeUp<CR>

" this sets so vim exits if NERDTree is the only window/tab remaining open
autocmd BufEnter *
	\ if tabpagenr('$') == 1
	\ && winnr('$') == 1
	\ && exists('b:NERDTree')
	\ && b:NERDTree.isTabTree()
	\ | quit
	\ | endif

