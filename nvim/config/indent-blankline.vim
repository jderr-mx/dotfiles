" indent-blankline
" thanks to https://gitlab.com/gaiety/dotfiles
lua << EOF
	vim.opt.termguicolors = true
	vim.cmd [[highlight IndentBlanklineIndent1 guifg=#56B6C2 gui=nocombine]]
	vim.cmd [[highlight IndentBlanklineIndent2 guifg=#61AFEF gui=nocombine]]
	vim.cmd [[highlight IndentBlanklineIndent3 guifg=#C678DD gui=nocombine]]
	vim.cmd [[highlight IndentBlanklineIndent4 guifg=#E5C07B gui=nocombine]]
	vim.cmd [[highlight IndentBlanklineIndent5 guifg=#98C379 gui=nocombine]]
	-- vim.opt.list = true
	-- vim.opt.listchars:append("space:⋅")
	-- vim.opt.listchars:append("eol:↴")

	require("indent_blankline").setup {
	--	space_char_blankline = " ",
		char_highlight_list = {
			"IndentBlanklineIndent1",
			"IndentBlanklineIndent2",
			"IndentBlanklineIndent3",
			"IndentBlanklineIndent4",
			"IndentBlanklineIndent5",
		},
	}
EOF
