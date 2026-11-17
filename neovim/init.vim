let s:vim_dotfile_directory = expand('~') . '/repos/github/dotfiles/vim/.vim'

let &runtimepath = s:vim_dotfile_directory
		\ . ',' . &runtimepath
		\ . ',' . s:vim_dotfile_directory . '/after'

let &packpath = &runtimepath

runtime vimrc
