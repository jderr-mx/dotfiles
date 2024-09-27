-- misc settings or settings that don't justify their own config
vim.g.easygit_enable_command = 1
vim.g.loaded_python_provider = 0
vim.g.python3_host_prog = '/Users/john/.asdf/shims/python3'

-- vim-test
vim.keymap.set('n', '<leader>t', ':TestFile<CR>', {})
vim.keymap.set('n', '<leader>s', ':TestNearest<CR>', {})
vim.keymap.set('n', '<leader>l', ':TestLast<CR>', {})
vim.keymap.set('n', '<leader>a', ':TestSuite<CR>', {})

-- catppuccin
require("catppuccin").setup({
    flavor = "mocha",
    integrations = {
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
     }
})
vim.cmd.colorscheme "catppuccin"

