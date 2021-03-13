" functions shamelessly used from
" https://github.com/mattjmorrison/dotfiles

"===============================================================================
" DESCRIPTION:   Navigate between tmux and vim buffer splits with the same
"                keys
" EXAMPLE USAGE: Split your buffer and/or terminal (with tmux) and use Ctrl
"                plus hjkl to navigate between splits
"===============================================================================
function! s:NavigateTermSplits(direction)
  let windowNumber = winnr()
  execute 'wincmd ' . a:direction
  if windowNumber == winnr()
    " We didn't move to a new vim split. Now try to move tmux splits
    silent call system('tmux select-pane -' . tr(a:direction, 'hjkl', 'LDUR'))
  endif
endfunction

"===============================================================================
" Function Keymappings
"===============================================================================
nnoremap <silent> <C-h> :call <SID>NavigateTermSplits('h')<CR>
nnoremap <silent> <C-j> :call <SID>NavigateTermSplits('j')<CR>
nnoremap <silent> <C-k> :call <SID>NavigateTermSplits('k')<CR>
nnoremap <silent> <C-l> :call <SID>NavigateTermSplits('l')<CR>

"===============================================================================
" DESCRIPTION:   Removes trailing whitespace when a file is saved. Prints a
"                message when the function runs so it will not be a surprise
"===============================================================================
function! StripTrailingWhitespace()
  if &ft =~ 'markdown'
    return
  endif
  normal mZ
  let l:chars = col("$")
  %s/\s\+$//e
  if (line("'Z") != line(".")) || (l:chars != col("$"))
    echo "Trailing whitespace stripped\n"
  endif
  normal `Z
endfunction

autocmd BufWritePre * :call StripTrailingWhitespace()

"===============================================================================
" Plugin source
"===============================================================================
"'osyo-manga/vim-over'

"===============================================================================
" Plugin Configurations
"===============================================================================
function! VisualFindAndReplace()
    :OverCommandLine%s/
    :w
endfunction

function! VisualFindAndReplaceWithSelection() range
    :'<,'>OverCommandLine s/
    :w
endfunction

"===============================================================================
" Plugin Keymappings
"===============================================================================
nnoremap <Leader>fr :call VisualFindAndReplace()<CR>
xnoremap <Leader>fr :call VisualFindAndReplaceWithSelection()<CR>
