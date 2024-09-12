package.path = "/Users/john/.config/nvim/config/?.lua;" .. package.path
vim.g.mapleader=" "

vim.cmd("set number")
vim.cmd("set encoding=utf8")
vim.opt.guicursor=""
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set nofoldenable")
-- 0.6 changed the mapping of Y to $y, muscle memory says no :o
vim.cmd("noremap Y yy")
local dotfiles_config_dir = vim.fs.joinpath(vim.fn.stdpath('config'), 'config')

vim.cmd.source(vim.fs.joinpath(dotfiles_config_dir, 'plugins.vim'))
vim.cmd.source(vim.fs.joinpath(dotfiles_config_dir, 'airline.vim'))
vim.cmd.source(vim.fs.joinpath(dotfiles_config_dir, 'ale.vim'))
vim.cmd.source(vim.fs.joinpath(dotfiles_config_dir, 'base.vim'))
vim.cmd.source(vim.fs.joinpath(dotfiles_config_dir, 'coc.vim'))
vim.cmd.source(vim.fs.joinpath(dotfiles_config_dir, 'colors.vim'))
vim.cmd.source(vim.fs.joinpath(dotfiles_config_dir, 'functions.vim'))
vim.cmd.source(vim.fs.joinpath(dotfiles_config_dir, 'fzf.vim'))
vim.cmd.source(vim.fs.joinpath(dotfiles_config_dir, 'indent-blankline.vim'))
vim.cmd.source(vim.fs.joinpath(dotfiles_config_dir, 'keymapping.vim'))
vim.cmd.source(vim.fs.joinpath(dotfiles_config_dir, 'misc.vim'))
vim.cmd.source(vim.fs.joinpath(dotfiles_config_dir, 'startify.vim'))
vim.cmd.source(vim.fs.joinpath(dotfiles_config_dir, 'statusline.vim'))
vim.cmd.source(vim.fs.joinpath(dotfiles_config_dir, 'treesitter.vim'))
vim.cmd.source(vim.fs.joinpath(dotfiles_config_dir, 'telescope.vim'))
vim.cmd.source(vim.fs.joinpath(dotfiles_config_dir, 'custom.vim'))

require('telescope').setup {}
require('telescope').load_extension('fzf')
require('telescope').setup{
  defaults = {
    file_ignore_patterns = {
      "node_modules"
    }
  }
}
require('neotree')
require('gitsigns_config')
vim.cmd("set shell=/bin/zsh")
-- You dont need to set any of these options. These are the default ones. Only
-- the loading is important
require('telescope').setup()

-- To get fzf loaded and working with telescope, you need to call
-- load_extension, somewhere after setup function:
require('telescope').load_extension('fzf')

