"####################################"
"# __     _____ __  __ ____   ____  #"
"# \ \   / /_ _|  \/  |  _ \ / ___| #"
"#  \ \ / / | || |\/| | |_) | |     #"
"#   \ V /  | || |  | |  _ <| |___  #"
"#    \_/  |___|_|  |_|_| \_\\____| #"
"#                                  #"
"####################################"

call plug#begin()

    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'jmcantrell/vim-virtualenv'
    Plug 'w0rp/ale'
    Plug 'scrooloose/nerdtree'
    Plug 'SirVer/ultisnips'
    Plug 'honza/vim-snippets'
    Plug 'Valloric/YouCompleteMe'
    Plug 'ctrlpvim/ctrlp.vim'

call plug#end()

filetype plugin on

let g:airline_theme='minimalist'
let g:airline_powerline_fonts = 1
let g:airline#extensions#ale#enabled = 1

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let g:ycm_key_list_select_completion=['<S-J>', '<Down>']
let g:ycm_key_list_previous_completion=['<S-K>', '<Up>']

let g:UltiSnipsExpandTrigger="<Tab>"
let g:UltiSnipsJumpForwardTrigger="<Tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-Tab>"

"for background same as terminal background
"for i3-sensible-terminal
autocmd ColorScheme * highlight! Normal ctermbg=NONE guibg=NONE
"for st
"hi Normal ctermbg=NONE

" Automatically deletes all trailing whitespace on save.
autocmd BufWritePre * %s/\s\+$//e

" Update binds when sxhkdrc is updated.
autocmd BufWritePost *sxhkdrc !pkill -USR1 sxhkd

" line numbers, and relative to see increasing and decreasing from current
    " line
set number relativenumber

set nocompatible

"4 space for tab instead of 8
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4

"auto indent next line with same indentation
set autoindent

"no viminfo file
set viminfo=

"spell check based on language
map <F6> :setlocal spell! spelllang=en_us<CR>

" Splits open at the bottom and right, unlike vim defaults.
set splitbelow splitright

"enter normal mode typing jk in insert mode
:map! jk <esc>

syntax on
colorscheme onedark

"inoremap {<CR> {<CR><CR>}<UP><TAB>

" Disables automatic commenting on newline:
autocmd FileType * setlocal formatoptions-=cro

" search in current and all subdirectories like fzf
set path+=**

" list all files in buffer
map <F5> :ls<CR>

"Display all matching files
set wildmenu

set colorcolumn=80
highlight ColorColumn ctermbg=7
