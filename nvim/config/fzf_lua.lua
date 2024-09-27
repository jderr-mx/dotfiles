require('fzf-lua').setup({
  winopts = {
    width = 1.0,
    height = 0.4,
    row= 1.0,
  },
  keymap = {
    fzf = {
      ["ctrl-q"] = "select-all+accept"
    },
  },
})
vim.keymap.set('n', '<leader>b', require('fzf-lua').buffers, { desc = "Fzf Buffers"})
vim.keymap.set('n', '<leader>ff', require('fzf-lua').files, { desc = "Fzf Files"})
vim.keymap.set('n', '<leader>gs', require('fzf-lua').git_status, { desc = "Fzf Git Status"})
vim.keymap.set('n', '<leader>gl', require('fzf-lua').git_commits, { desc = "Fzf Git Commits"})
vim.keymap.set('n', '<leader>gb', require('fzf-lua').git_branches, { desc = "Fzf Git Branches"})
vim.keymap.set('n', '<leader>sp', require('fzf-lua').live_grep_native, { desc = "Fzf Live Grep"})
vim.keymap.set('n', '<leader>h', require('fzf-lua').oldfiles, { desc = "Fzf Old Files"})
vim.keymap.set('n', '<leader>m', require('fzf-lua').marks, { desc = "Fzf Marks"})
