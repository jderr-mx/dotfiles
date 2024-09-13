"install some plugins
call plug#begin(stdpath('config') . '/plugged')

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'rakr/vim-one'
Plug 'dense-analysis/ale'
Plug 'tpope/vim-fugitive'
Plug 'vim-test/vim-test'
Plug 'mhinz/vim-startify'
Plug 'osyo-manga/vim-over'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'lukas-reineke/indent-blankline.nvim', {'tag': 'v2.20.8'}
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'kshenoy/vim-signature'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'nvim-neo-tree/neo-tree.nvim'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'MunifTanjim/nui.nvim'
Plug 'lewis6991/gitsigns.nvim'
call plug#end()
