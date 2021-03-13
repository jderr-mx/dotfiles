let mapleader=" "

set number
set encoding=utf8
set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types:h12
set guicursor=
setlocal tabstop=2
setlocal softtabstop=2
setlocal shiftwidth=2
set nofoldenable

"install some plugins
call plug#begin(stdpath('config') . '/plugged')

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'kristijanhusak/defx-git'
Plug 'kristijanhusak/defx-icons'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'rakr/vim-one'
Plug 'dense-analysis/ale'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'vim-test/vim-test'
Plug 'mhinz/vim-startify'
call plug#end()

let g:easygit_enable_command = 1
let g:loaded_python_provider = 0
let g:python3_host_prog = '/usr/local/bin/python3'

:hi! Normal ctermbg=NONE guibg=NONE
:hi CursorLine cterm=NONE ctermbg=52 guibg=#5f0000

:autocmd OptionSet guicursor noautocmd set guicursor=

set rtp+=/usr/local/opt/fzf

let g:closetag_filenames = "*.html,*.xhtml,*.hbs,*.eex,*.erb,*.ex,*.leex"
"airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

colorscheme one

" airline stuff
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_powerline_fonts = 1
let g:airline_theme = 'molokai'
let g:airline#extensions#coc#enabled = 1

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

"vim-test
map <Leader>t :TestFile<CR>
map <Leader>s :TestNearest<CR>
map <Leader>l :TestLast<CR>
map <Leader>a :TestSuite<CR>

"startify
let g:startify_custom_header = [
    \ "     ____.      .__             ________                        ",
    \ "    |    | ____ |  |__   ____   \\______ \\   __________________  ",
    \ "    |    |/  _ \\|  |  \\ /    \\   |    |  \\_/ __ \\_  __ \\_  __ \\ ",
    \ "/\\__|    (  <_> )   Y  \\   |  \\  |    `   \\  ___/|  | \\/|  | \\/ ",
    \ "\\________|\\____/|___|  /___|  / /_______  /\\___  >__|   |__|    ",
    \ "                     \\/     \\/          \\/     \\/               ",
    \]

let g:startify_show_files_number = 10
let g:startify_bookmarks = [ '~/.config/nvim/init.nvim' ]
hi StartifyHeader ctermfg=76
let g:startify_change_to_dir = 0
autocmd User Startified setlocal buftype=

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

"decorate status lines
setl laststatus=2

let s:currentmode={'n':  {'text': 'NORMAL',  'termColor': 60, 'guiColor': '#076678'},
                 \ 'v':  {'text': 'VISUAL',  'termColor': 58, 'guiColor': '#D65D0E'},
                 \ 'V':  {'text': 'V-LINE',  'termColor': 58, 'guiColor': '#D65D0E'},
                 \ '': {'text': 'V-BLOCK', 'termColor': 58, 'guiColor': '#D65D0E'},
                 \ 'i':  {'text': 'INSERT',  'termColor': 29, 'guiColor': '#8EC07C'},
                 \ 'R':  {'text': 'REPLACE', 'termColor': 88, 'guiColor': '#CC241D'}}

function! TextForCurrentMode()
    set lazyredraw
    if has_key(s:currentmode, mode())
        let modeMap = s:currentmode[mode()]
        execute 'hi! User1 ctermfg=255 ctermbg=' . modeMap['termColor'] . 'guifg=#EEEEEE guibg=' . modeMap['guiColor'] . ' cterm=none'
        return modeMap['text']
    else
        return 'UNKNOWN'
    endif
    set nolazyredraw
endfunction

function! BuildStatusLine(showMode)
    hi User1 ctermfg=236 ctermbg=101 guifg=#303030 guibg=#87875F cterm=reverse
    hi User7 ctermfg=88  ctermbg=236 guifg=#870000 guibg=#303030 cterm=none
    hi User8 ctermfg=236 ctermbg=101 guifg=#303030 guibg=#87875F cterm=reverse
    setl statusline=
    if a:showMode
        setl statusline+=%1*\ %{TextForCurrentMode()}\ "
    endif
    setl statusline+=%<                              " Truncate contents after when line too long
    setl statusline+=%{&paste?'>\ PASTE':''}         " Alert when in paste mode
    setl statusline+=%8*\ %F                         " File path
    setl statusline+=%7*%m                           " File modified status
    setl statusline+=%8*                             " Set User8 coloring for rest of status line
    setl statusline+=%r%h%w                          " Flags
    setl statusline+=%=                              " Right align the rest of the status line
    setl statusline+=\ [TYPE=%Y]                     " File type
    setl statusline+=\ [POS=L%04l,R%04v]             " Cursor position in the file line, row
    setl statusline+=\ [LEN=%L]                      " Number of line in the file
    setl statusline+=%#warningmsg#                   " Highlights the syntastic errors in red
endfunction

au WinLeave * call BuildStatusLine(0)
au WinEnter,VimEnter,BufWinEnter * call BuildStatusLine(1)

" colors
set background=dark " for the dark version

if (has("termguicolors"))
  set termguicolors
endif

let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
"let g:webdevicons_enable_unite = 1
" you can add these colors to your .vimrc to help customizing
let s:brown = "905532"
let s:aqua =  "3AFFDB"
let s:blue = "689FB6"
let s:darkBlue = "44788E"
let s:purple = "834F79"
let s:lightPurple = "834F79"
let s:red = "AE403F"
let s:beige = "F5C06F"
let s:yellow = "F09F17"
let s:orange = "D4843E"
let s:darkOrange = "F16529"
let s:pink = "CB6F6F"
let s:salmon = "EE6E73"
let s:green = "8FAA54"
let s:lightGreen = "31B53E"
let s:white = "FFFFFF"
let s:rspec_red = 'FE405F'
let s:git_orange = 'F54D27'


augroup CursorLine
    au!
    au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
    au WinLeave * setlocal nocursorline
augroup END

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
