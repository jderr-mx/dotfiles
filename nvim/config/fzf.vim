"fzf
set rtp+=/usr/local/opt/fzf

"nnoremap <Leader>sp :Ag<CR>
"nnoremap <Leader>b :Buffers<CR>
"nnoremap <Leader>gl :Commits<CR>
"noremap <Leader>ff :Files<CR>
"nnoremap <Leader>gs :GFiles?<CR>
"nnoremap <Leader>h :History<CR>
nnoremap <Leader>bd :BD<CR>

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
