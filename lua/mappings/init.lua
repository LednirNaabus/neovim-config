-- Leader Key
vim.g.mapleader = ' ' -- space

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- general mappings

-- navigation
map('n', '<C-h>', '<C-w>h', opts)
map('n', '<C-l>', '<C-w>l', opts)
map('n', '<C-j>', '<C-w>j', opts)
map('n', '<C-k>', '<C-w>k', opts)

-- exit insert mode
map('i', 'jk', '<ESC>', opts)

-- nvim-tree mappings
map('n', '<leader>t', ':NvimTreeToggle<CR>', opts)

-- replace currently selected text with default register without yanking it
vim.cmd([[
    xnoremap <leader>p "_dP
]])

-- clear highlights on search
map('n', '<Esc>', '<cmd>nohlsearch<CR>', opts)

-- nvim-telescope mappings
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {}) -- find files
vim.keymap.set('n', '<leader>fg', builtin.git_files, {}) -- fuzzy finding; git file and all file search
-- fuzzy search
-- Basically lets you find everywhere that we say any string/word you type using grep
vim.keymap.set('n', '<C-p>', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
