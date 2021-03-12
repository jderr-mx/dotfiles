let mapleader=" "

"defx
call defx#custom#option('_', {
      \ 'columns': 'indent:icons:filename:mark:git',
      \ 'winwidth': 40,
      \ 'split': 'vertical',
      \ 'direction': 'topleft',
      \ 'show_ignored_files': 0,
      \ 'buffer_name': '',
      \ 'toggle': 1,
      \ 'resume': 1
      \ })

call defx#custom#column('mark', {
      \ 'readonly_icon': '',
      \ 'selected_icon': '',
      \ })

call defx#custom#column('git', 'indicators', {
      \ 'Modified'  : '✹',
      \ 'Staged'    : '✚',
      \ 'Untracked' : '✭',
      \ 'Renamed'   : '➜',
      \ 'Unmerged'  : '═',
      \ 'Ignored'   : '☒',
      \ 'Deleted'   : '✖',
      \ 'Unknown'   : '?'
      \ })

call defx#custom#column('git', 'column_length', 1)

call defx#custom#column('filename', {
      \ 'max_width': -40,
      \ })

autocmd FileType defx call s:defx_my_settings()
nnoremap <silent> <Leader>tr :<C-U>:Defx -resume -buffer_name=explorer -split=vertical -vertical_preview<CR>
function! s:defx_my_settings() abort
    nnoremap <silent><buffer><expr> <CR>
        \ defx#is_directory() ?
        \ defx#do_action('open_tree') :
        \ defx#do_action('drop')
     nnoremap <silent><buffer><expr> l
        \ defx#is_directory() ? defx#do_action('open') : 0
     nnoremap <silent><buffer><expr> h
        \ defx#do_action('cd', ['..'])
     nnoremap <silent><buffer><expr> N
        \ defx#do_action('new_file')
     nnoremap <silent><buffer><expr> d
        \ defx#do_action('remove')
     nnoremap <silent><buffer><expr> r
        \ defx#do_action('rename')
     nnoremap <silent><buffer><expr> c
        \ defx#do_action('copy')
     nnoremap <silent><buffer><expr> m
        \ defx#do_action('move')
     nnoremap <silent><buffer><expr> p
        \ defx#do_action('paste')
     nnoremap <silent><buffer><expr> q
        \ defx#do_action('quit')
endfunction
autocmd FileType defx setlocal relativenumber

"fzf
nnoremap <Leader>sp :Ag<CR>
nnoremap <Leader>b :Buffers<CR>
nnoremap <Leader>gl :Commits<CR>
noremap <Leader>ff :Files<CR>
nnoremap <Leader>gs :GFiles?<CR>
nnoremap <Leader>h :History<CR>

"inoremap 9<Tab> <C-R>=(pumvisible()? "\<LT>C-E>":"")<CR><C-R>=UltiSnipsCallUnite()<CR>
"nnoremap 9<Tab> a<C-R>=(pumvisible()? "\<LT>C-E>":"")<CR><C-R>=UltiSnipsCallUnite()<CR>
let g:UltiSnipsExpandTrigger="9<tab>"

function! Bufs()
  redir => list
  silent ls
  redir END
  return split(list, "\n")
endfunction

command! BD call fzf#run(fzf#wrap({
  \ 'source': Bufs(),
  \ 'sink*': { lines -> execute('bwipeout '.join(map(lines, {_, line -> split(line)[0]}))) },
  \ 'options': '--multi --reverse --bind ctrl-a:select-all+accept'
\ }))

command! -bang -nargs=* Ag call fzf#vim#ag(<q-args>, '--workers=1', {'options': '--no-sort'}, <bang>0)
let g:fzf_layout = { 'down': '40%' }
plug#begin(stdpath('config') . '/init.vim')

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'kristijanhusak/defx-git'
Plug 'kristijanhusak/defx-icons'plug#end()
