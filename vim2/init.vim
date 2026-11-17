" Neovim entry point for the shared Vimscript configuration.
" Symlink this file to $XDG_CONFIG_HOME/nvim/init.vim.
" The shared vimrc remains the source of editor settings.

" Resolve this file itself so the repository may be symlinked into the
" Neovim configuration directory without breaking relative imports.
let s:vim2_directory = fnamemodify(resolve(expand('<sfile>:p')), ':h')
let s:repository_root = fnamemodify(s:vim2_directory, ':h')
let s:legacy_vim_directory = s:repository_root . '/vim/.vim'

" Reuse the existing Vim runtime files, including vim-plug and colorschemes.
if isdirectory(s:legacy_vim_directory)
    let &runtimepath = s:legacy_vim_directory . ',' . &runtimepath
endif

" Reuse the existing plugin configuration from the same repository.
let g:vim2_plugin_config = s:legacy_vim_directory . '/vimrc_pluggins.vim'

execute 'source ' . fnameescape(s:vim2_directory . '/vimrc')

unlet g:vim2_plugin_config
unlet s:legacy_vim_directory s:repository_root s:vim2_directory
