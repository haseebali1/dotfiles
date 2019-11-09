"####################################"
"# __     _____ __  __ ____   ____  #"
"# \ \   / /_ _|  \/  |  _ \ / ___| #"
"#  \ \ / / | || |\/| | |_) | |     #"
"#   \ V /  | || |  | |  _ <| |___  #"
"#    \_/  |___|_|  |_|_| \_\\____| #"
"#                                  #"
"####################################"

set number
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set autoindent
set viminfo=

:map! jk <esc>

syntax on
"colorscheme onedark 

inoremap {<CR> {<CR><CR>}<UP><TAB>

call plug#begin()

    "Plug 'ervandew/supertab'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'jmcantrell/vim-virtualenv'
    Plug 'w0rp/ale'
    Plug 'scrooloose/nerdtree'
"    Plug 'MarcWeber/vim-addon-mw-utils'
"    Plug 'tomtom/tlib_vim'
"    Plug 'garbas/vim-snipmate'
    Plug 'SirVer/ultisnips'
    Plug 'honza/vim-snippets'
    Plug 'Valloric/YouCompleteMe'
    Plug 'ctrlpvim/ctrlp.vim'
    
call plug#end()

let g:airline_theme='luna'
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
