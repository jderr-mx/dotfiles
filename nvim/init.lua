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
-- load the config directory
package.path = "/Users/john/.config/nvim/config/?.lua;" .. package.path
-- load my custom configs
require('plugins')
require('neotree')
require('gitsigns_config')
require('fzf_lua')-- load legacy vimscripts

local dotfiles_config_dir = vim.fs.joinpath(vim.fn.stdpath('config'), 'config')
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
vim.cmd.source(vim.fs.joinpath(dotfiles_config_dir, 'custom.vim'))

vim.cmd("set shell=/bin/zsh")

