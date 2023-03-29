let g:ale_sign_column_always=1
let g:ale_linters = {
    \ 'javascript': ['eslint'],
    \ 'svelte': ['eslint'],
    \ 'ruby': ['rubocop'],
    \ 'elixir': ['elixir-ls', 'credo'],
    \ 'eelixir': ['elixir-ls', 'credo'],
    \ 'html.handlebars': ['embertemplatelint'],
    \ 'svelte': ['eslint'],
    \}
let g:ale_fixers = {
    \ 'javascript': ['eslint', 'prettier'],
    \ 'svelte': ['eslint', 'prettier'],
    \ 'ruby': ['rubocop'],
    \ 'elixir': ['mix_format'],
    \ 'eelixir': ['mix_format'],
    \ 'html.handlebars': ['prettier'],
    \ 'svelte': ['eslint', 'prettier'],
    \}
let g:ale_completion_enabled=0
let g:ale_fix_on_save = 1
"call ale#Set('php_cs_fixer_use_global', 1)
"let g:ale_php_cs_fixer_executable = '/Users/john/.asdf/shims/php-cs-fixer'
nmap <Leader>d <Plug>(ale_fix)
