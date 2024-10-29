require('neo-tree').setup({
  event_handlers = {
    {
      event = "neo_tree_buffer_enter",
      handler = function(arg)
        vim.cmd [[
          setlocal relativenumber
         ]]
      end,
    },
  },
})
vim.keymap.set('n', '<leader>tr', ':Neotree toggle=true <CR>')
