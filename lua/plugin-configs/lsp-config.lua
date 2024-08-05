-- mason config
require('mason').setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    },
    ensure_installed = {
        "mypy",
        "ruff",
        "stylua",
    }
})

-- mason-lsp config
require('mason-lspconfig').setup({
    ensure_installed = {
        "lua_ls",
        "pyright",
        "clangd",
        "bashls",
        "jsonls",
        "sqlls",
    }
})

-- neovim-lsp config
local lspconfig = require('lspconfig')
local config = require('plugins')

local on_attach = config.on_attach
local capabilities = config.capabilities

local servers = {
    "pyright",
    "lua_ls",
    "clangd",
    "bashls",
}

for _, lsp in pairs(servers) do
    lspconfig[lsp].setup({
        on_attach = on_attach,
        capabilities = capabilities,
    })
end

-- mappings: neovim-lsp
-- use :help to learn more about them
vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
vim.keymap.set('n', '<C-p>a', vim.lsp.buf.code_action, opts)
vim.keymap.set('n', '<leader>F', function()
    vim.lsp.buf.format { async = true }
end, opts)
