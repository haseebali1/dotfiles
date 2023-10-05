-- disable space
vim.api.nvim_set_keymap('n', '<Space>', '<NOP>', { noremap=true, silent=true })

-- assign space as leader key
vim.g.mapleader = ' '

-- toggle higlighting
vim.api.nvim_set_keymap('n', '<leader>h', ':set hlsearch!<CR>', { noremap=true, silent=true })

-- assign jk as esc
vim.api.nvim_set_keymap('i', 'jk', '<ESC>', { noremap=true, silent=true })

-- better block indentation
vim.api.nvim_set_keymap('v', '<', '<gv', { noremap=true, silent=true })
vim.api.nvim_set_keymap('v', '>', '>gv', { noremap=true, silent=true })

-- better navigation in split mode
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { silent=true })
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { silent=true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { silent=true })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { silent=true })

-- Tab to cycle in menus
vim.api.nvim_set_keymap('i', '<expr><TAB>', 'pumvisible() ? \"\\<C-n>\" : \"\\<TAB>\"', { noremap=true, silent=true })
vim.api.nvim_set_keymap('i', '<expr><S-TAB>', 'pumvisible() ? \"\\<C-p>\" : \"\\<S-TAB>\"', { noremap=true, silent=true })

-- toggle spell check
vim.api.nvim_set_keymap('', '<F6>', ':setlocal spell! spelllang=en_us linebreak!<CR>', { noremap=true, silent=true })

-- toggle buffer
vim.api.nvim_set_keymap('', '<F5>', ':ls<CR>', { noremap=true, silent=true })

-- move line(s) of code up or down
vim.api.nvim_set_keymap('x', 'K', ":move '<-2<CR>gv=gv", {})
vim.api.nvim_set_keymap('x', 'J', ":move '>+1<CR>gv=gv", {})

--yank full path of current file
vim.api.nvim_set_keymap('', '<leader>p', ':let @+=expand("%:p")<CR>', { silent=true })

vim.api.nvim_set_keymap('n', 'j', 'gj', { silent=true })
vim.api.nvim_set_keymap('n', 'k', 'gk', { silent=true })

--surround with text
vim.api.nvim_set_keymap('', '<leader>j', ':%s/\\(.*\\)/input += "\\1\\\\n";<CR>Vggy', { silent=true })

