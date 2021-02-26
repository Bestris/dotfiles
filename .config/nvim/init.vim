source $HOME/.config/nvim/vim-plug/plugins.vim

call plug#begin(stdpath('data') . '/plugged')

Plug 'dylanaraps/wal.vim'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'myusuf3/numbers.vim'
Plug 'frazrepo/vim-rainbow'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

colorscheme wal

" If can't find extention of a file, assume it's a C file
autocmd BufNewFile,BufRead * if expand('%:t') !~ '\.' | set syntax=dosini | endif

let g:airline_powerline_fonts = 1
"let g:airline_theme='base16'

"TABLINE :

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#tab_min_count = 1
let g:airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#show_tab_type = 0

