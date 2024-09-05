let g:ale_sign_column_always=1
let g:ale_linters = {
    \ 'javascript': ['eslint'],
    \ 'typescript': ['eslint'],
    \ 'typescriptreact': ['eslint'],
    \ 'svelte': ['eslint'],
    \ 'ruby': ['rubocop'],
    \ 'elixir': ['elixir-ls', 'credo'],
    \ 'eelixir': ['elixir-ls', 'credo'],
    \ 'heex': ['elixir-ls', 'credo'],
    \}
let g:ale_fixers = {
    \ 'javascript': ['eslint', 'prettier'],
    \ 'typescript': ['eslint', 'prettier'],
    \ 'typescriptreact': ['eslint', 'prettier'],
    \ 'svelte': ['eslint', 'prettier'],
    \ 'ruby': ['rubocop'],
    \ 'elixir': ['mix_format'],
    \ 'eelixir': ['mix_format'],
    \ 'heex': ['mix_format'],
    \ 'handlebars': ['prettier'],
    \ 'sql': ['pgformatter'],
    \}
let g:ale_completion_enabled=0
let g:ale_fix_on_save = 1
nmap <Leader>d <Plug>(ale_fix)
