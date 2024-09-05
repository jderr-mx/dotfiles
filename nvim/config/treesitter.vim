lua << EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = { "css", "html", "glimmer", "elixir", "heex", "javascript", "php", "sql", "astro", "json", "lua", "bash", "svelte"},
  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
EOF
