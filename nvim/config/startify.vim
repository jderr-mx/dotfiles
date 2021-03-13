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

