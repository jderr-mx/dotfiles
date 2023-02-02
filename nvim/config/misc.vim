"all the stuff that doesn't fit elsewhere
let g:easygit_enable_command = 1
let g:loaded_python_provider = 0
let g:python3_host_prog = '/opt/homebrew/bin/python3'
let g:ruby_host_prog = '/Users/john/.asdf/shims/ruby'
let g:closetag_filenames = "*.html,*.xhtml,*.hbs,*.eex,*.erb,*.ex,*.leex,*.js,*.astro,*.svelte"
"autocmd BufRead,BufEnter *.astro set filetype=astro
"autocmd BufRead,BufEnter *.astro set syntax=html

if !exists('g:vdebug_options')
  let g:vdebug_options = {}
endif
let g:vdebug_options.port = 9002

"vim-test
map <Leader>t :TestFile<CR>
map <Leader>s :TestNearest<CR>
map <Leader>l :TestLast<CR>
map <Leader>a :TestSuite<CR>
