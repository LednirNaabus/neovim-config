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

-- ways exit insert mode
map('i', 'jk', '<ESC>', opts)
vim.keymap.set({'i', 'n', 'v'}, '<C-c>', '<Esc>', {desc = 'Make Ctrl+c behave exactly like escape.'})

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
vim.keymap.set('n', '<C-p>s', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)

-- nerdcommenter mappings here
vim.cmd([[
    nnoremap <leader><leader>c :call nerdcommenter#Comment(0, "toggle")<CR>
    vnoremap <leader><leader>c :call nerdcommenter#Comment(0, "toggle")<CR>
]])

-- barbar mappings
-- move to previous/next
map('n', '<A-,>', ':BufferPrevious<CR>', opts)
map('n', '<A-.>', ':BufferNext<CR>', opts)
-- Re-order to previous/next
map('n', '<A-<>', ':BufferMovePrevious<CR>', opts)
map('n', '<A->>', ' :BufferMoveNext<CR>', opts)
-- Close buffer
map('n', '<A-w>', ':BufferClose<CR>', opts)
-- Goto buffer in position...
map('n', '<A-1>', ':BufferGoto 1<CR>', opts)
map('n', '<A-2>', ':BufferGoto 2<CR>', opts)
map('n', '<A-3>', ':BufferGoto 3<CR>', opts)
map('n', '<A-4>', ':BufferGoto 4<CR>', opts)
