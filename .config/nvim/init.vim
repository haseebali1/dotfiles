"####################################"
"# __     _____ __  __ ____   ____  #"
"# \ \   / /_ _|  \/  |  _ \ / ___| #"
"#  \ \ / / | || |\/| | |_) | |     #"
"#   \ V /  | || |  | |  _ <| |___  #"
"#    \_/  |___|_|  |_|_| \_\\____| #"
"#                                  #"
"####################################"

call plug#begin('~/.config/nvim/plugged')

    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'preservim/nerdtree'
    Plug 'jiangmiao/auto-pairs'
    "Plug 'jmcantrell/vim-virtualenv'
    "Plug 'w0rp/ale'
    "Plug 'scrooloose/nerdtree'
    "Plug 'SirVer/ultisnips'
    "Plug 'honza/vim-snippets'
    "Plug 'neoclide/coc.nvim', {'branch': 'release'}
    "Plug 'ctrlpvim/ctrlp.vim'
    "Plug 'Yggdroot/indentLine'

    " color scheme
    Plug 'dracula/vim', { 'as': 'dracula' }

    " css colors
    Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }

    " file finding using telescope
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'nvim-telescope/telescope-fzy-native.nvim'


    "auto completion and lsp
    Plug 'neovim/nvim-lspconfig'
    Plug 'nvim-lua/completion-nvim'
    "Plug 'kabouzeid/nvim-lspinstall'
    "Plug 'hrsh7th/nvim-compe'

call plug#end()

lua require'lspconfig'.clangd.setup{on_attach=require'completion'.on_attach}
lua require'lspconfig'.cssls.setup{on_attach=require'completion'.on_attach}
lua require'lspconfig'.html.setup{on_attach=require'completion'.on_attach}
lua require'lspconfig'.pyright.setup{on_attach=require'completion'.on_attach}
lua require'lspconfig'.texlab.setup{on_attach=require'completion'.on_attach}
lua require'lspconfig'.tsserver.setup{on_attach=require'completion'.on_attach}

" autocomplete searching
set completeopt=menuone,noinsert,noselect
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']

" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

filetype plugin on

" airline statusbar settings
let g:airline_theme='dracula'
let g:airline_powerline_fonts = 1
let g:airline#extensions#ale#enabled = 1

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"let g:ycm_key_list_select_completion=['<S-J>', '<Down>']
"let g:ycm_key_list_previous_completion=['<S-K>', '<Up>']
"let g:ycm_autoclose_preview_window_after_completion=1

"let g:UltiSnipsExpandTrigger="<Tab>"
"let g:UltiSnipsJumpForwardTrigger="<Tab>"
"let g:UltiSnipsJumpBackwardTrigger="<S-Tab>"

set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

let g:Hexokinase_refreshEvents = ['TextChangedI', 'InsertLeave']

let g:Hexokinase_optInPatterns = [
\     'full_hex',
\     'triple_hex',
\     'rgb',
\     'rgba',
\     'hsl',
\     'hsla',
\     'colour_names'
\ ]

let g:Hexokinase_highlighters = ['backgroundfull']

"for background same as terminal background
"for i3-sensible-terminal
"autocmd ColorScheme * highlight! Normal ctermbg=NONE guibg=NONE
"for st
"hi Normal ctermbg=NONE

" Automatically deletes all trailing whitespace on save.
autocmd BufWritePre * %s/\s\+$//e

" Update binds when sxhkdrc is updated.
autocmd BufWritePost *sxhkdrc !pkill -USR1 sxhkd

" line numbers, and relative to see increasing and decreasing from current
    " line
set number relativenumber

" have the block in insert mode
set guicursor=

" remove search highlight for words
set nohlsearch

" remove error sounds
set noerrorbells

"4 space for tab instead of 8
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4

" higlight the line with the cursor on it
set cursorline

"auto indent next line with same indentation
"set autoindent

"set smartindent
set cindent

"no viminfo file
set viminfo=


" gives a 10 line buffer when scrolling so cursor never hits 'bottom'
" or 'top' of page
set scrolloff=10

"spell check based on language
map <F6> :setlocal spell! spelllang=en_us<CR>

" Splits open at the bottom and right, unlike vim defaults.
set splitbelow splitright

"enter normal mode typing jk in insert mode
:map! jk <esc>

"syntax on
colorscheme dracula

"inoremap {<CR> {<CR><CR>}<UP><TAB>

" Disables automatic commenting on newline:
autocmd FileType * setlocal formatoptions-=cro

" search in current and all subdirectories like fzf
set path+=**

" list all files in buffer
map <F5> :ls<CR>

" allow changing buffers with unsaved work
set hidden

"Display all matching files
set wildmenu

set colorcolumn=80
"highlight ColorColumn ctermbg=3
highlight ColorColumn ctermbg=0 guibg=purple

:imap n~ ñ

let mapleader = " "

" open Telescope to find files
nnoremap <leader>ff <cmd>Telescope find_files<cr>

" nerdtree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" auto-pairs
let g:AutoPairsFlyMode = 1

"use system clipboard when yanking
set clipboard=unnamedplus
