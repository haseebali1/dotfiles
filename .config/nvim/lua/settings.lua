vim.o.completeopt="menuone,noinsert,noselect"
vim.o.number=true                               -- line number
vim.o.relativenumber=true                       -- show numbers relative to location
--vim.o.guicursor=""
vim.o.hlsearch=false                            -- no highlight for search
vim.o.errorbells=false                          -- no error sounds
vim.o.expandtab=true                            -- converts tabs to spaces
vim.o.shiftwidth=2                              -- number of spaces chars for indentation
vim.o.softtabstop=2                             -- tabs for spaces
vim.o.tabstop=2                                 -- tabs for spaces
vim.o.cursorline=true                           -- highlight current line
vim.o.autoindent=true                           -- keep same indent
--vim.o.cindent=true
vim.o.viminfo=""
vim.o.backup=false
vim.o.writebackup=false
vim.o.scrolloff=15                              -- keep cursor 15 lines from bottom
-- change default splitting behavior
vim.o.splitbelow=true                           -- split screen below
vim.o.splitright=true                           -- split screen right
vim.o.path="+=**"                               -- search in current and all subdirs
vim.o.hidden=true                               -- allow multiple buffers to be open
vim.o.wildmenu=true                             -- display all matching files
vim.o.colorcolumn="80"                          -- highlight 80 column
vim.o.clipboard="unnamedplus"                   -- use system clipboard
vim.o.termguicolors=true
--vim.o.syntax=on

-- color scheme
vim.cmd[[colorscheme dracula]]

-- column color and current line color
vim.cmd[[highlight ColorColumn ctermbg=0 guibg=#BD93F9]]

-- disable automatic commenting on newline
vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "*" },
  command = [[ setlocal formatoptions-=cro ]],
})

-- update keybindings when sxhkdrc is updated
vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  pattern = { "*sxhkdrc" },
  command = [[ !pkill -USR1 sxhkd ]],
})

-- automatically delete all trailing whitespaces on save
vim.api.nvim_create_autocmd({ "BufWritePre" }, {
  pattern = { "*" },
  command = [[ %s/\s\+$//e ]],
})
