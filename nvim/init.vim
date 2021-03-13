let mapleader=" "

set number
set encoding=utf8
set guicursor=
setlocal tabstop=2
setlocal softtabstop=2
setlocal shiftwidth=2
set nofoldenable

" load configs
let g:dotfiles_config_dir = stdpath('config') . '/config/'
let g:dotfiles_config_files = ['plugins.vim',
  \ 'airline.vim',
  \ 'defx.vim',
  \ 'startify.vim',
  \ 'functions.vim',
  \ 'fzf.vim',
  \ 'statusline.vim',
  \ 'colors.vim',
  \ 'keymapping.vim',
  \ ]

for f in g:dotfiles_config_files
  execute 'source' g:dotfiles_config_dir . f
endfor
