let g:ale_sign_column_always=1
let g:ale_linters = {
    \ 'javascript': ['eslint'],
    \ 'ruby': ['rubocop'],
    \}
let g:ale_fixers = {
    \ 'javascript': ['eslint'],
    \ 'ruby': ['rubocop'],
    \}
let g:ale_completion_enabled=0
let g:ale_fix_on_save = 0
nmap <Leader>d <Plug>(ale_fix)
