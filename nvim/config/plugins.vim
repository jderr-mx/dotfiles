"install some plugins
call plug#begin(stdpath('config') . '/plugged')

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'kristijanhusak/defx-git'
Plug 'kristijanhusak/defx-icons'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'rakr/vim-one'
Plug 'dense-analysis/ale'
"Plug 'alvan/vim-closetag'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'vim-test/vim-test'
Plug 'mhinz/vim-startify'
Plug 'osyo-manga/vim-over'
Plug 'airblade/vim-gitgutter'
Plug 'sheerun/vim-polyglot'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'vim-vdebug/vdebug'
Plug 'elixir-editors/vim-elixir'
Plug 'wuelnerdotexe/vim-astro'
Plug 'tpope/vim-unimpaired'
call plug#end()
