let mapleader=" "

set number
set encoding=utf8
set guicursor=
set tabstop=2
set softtabstop=2
set shiftwidth=2
set nofoldenable
" 0.6 changed the mapping of Y to $y, muscle memory says no :o
noremap Y yy

" load configs
let g:dotfiles_config_dir = stdpath('config') . '/config/'
let g:dotfiles_config_files = ['plugins.vim',
  \ 'airline.vim',
  \ 'ale.vim',
  \ 'base.vim',
  \ 'coc.vim',
  \ 'colors.vim',
  \ 'defx.vim',
  \ 'functions.vim',
  \ 'fzf.vim',
  \ 'indent-blankline.vim',
  \ 'keymapping.vim',
  \ 'misc.vim',
  \ 'startify.vim',
  \ 'statusline.vim',
  \ 'treesitter.vim',
  \ 'telescope.vim',
  \ 'custom.vim',
  \ ]

for f in g:dotfiles_config_files
  execute 'source' g:dotfiles_config_dir . f
endfor
