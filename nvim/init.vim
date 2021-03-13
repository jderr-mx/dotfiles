let mapleader=" "

set number
set encoding=utf8
set guicursor=
set tabstop=2
set softtabstop=2
set shiftwidth=2
set nofoldenable

" load configs
let g:dotfiles_config_dir = stdpath('config') . '/config/'
let g:dotfiles_config_files = ['plugins.vim',
  \ 'base.vim',
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
