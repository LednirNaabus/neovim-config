-- set leader key
vim.g.mapleader = " " -- spacebar

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

-- nerdcommenter mappings here
vim.cmd([[
    nnoremap <leader><leader>c :call nerdcommenter#Comment(0, "toggle")<CR>
    vnoremap <leader><leader>c :call nerdcommenter#Comment(0, "toggle")<CR>
]])

-- barbar mappings
-- move to previous/next
map('n', '<A-,>', ':BufferPrevious<CR>', opts)
map('n', '<A-,>', ':BufferNext<CR>', opts)
-- Re-order to previous/next
map('n', '<A-<>', ':BufferMovePrevious<CR>', opts)
map('n', '<A->>', ' :BufferMoveNext<CR>', opts)
-- Goto buffer in position...
map('n', '<A-1>', ':BufferGoto 1<CR>', opts)
map('n', '<A-2>', ':BufferGoto 2<CR>', opts)
map('n', '<A-3>', ':BufferGoto 3<CR>', opts)
map('n', '<A-4>', ':BufferGoto 4<CR>', opts)
map('n', '<A-5>', ':BufferGoto 5<CR>', opts)
map('n', '<A-6>', ':BufferGoto 6<CR>', opts)
map('n', '<A-7>', ':BufferGoto 7<CR>', opts)
map('n', '<A-8>', ':BufferGoto 8<CR>', opts)
map('n', '<A-9>', ':BufferGoto 9<CR>', opts)
map('n', '<A-0>', ':BufferLast<CR>', opts)
-- Close buffer
map('n', '<A-w>', ':BufferClose<CR>', opts)
