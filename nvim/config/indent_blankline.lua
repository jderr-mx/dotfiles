-- indent-blankline
--  thanks to https://gitlab.com/gaiety/dotfiles
vim.opt.termguicolors = true
vim.cmd [[highlight IndentBlanklineIndent1 guifg=#999999 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent2 guifg=#888888 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent3 guifg=#777777 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent4 guifg=#666666 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent5 guifg=#555555 gui=nocombine]]
-- vim.opt.list = true
-- vim.opt.listchars:append("space:⋅")
-- vim.opt.listchars:append("eol:↴")

require("indent_blankline").setup {
--  space_char_blankline = " ",
  char_highlight_list = {
    "IndentBlanklineIndent1",
    "IndentBlanklineIndent2",
    "IndentBlanklineIndent3",
    "IndentBlanklineIndent4",
    "IndentBlanklineIndent5",
  },
}
