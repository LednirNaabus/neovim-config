return require'packer'.startup(function()
    use 'wbthomason/packer.nvim' -- plugin manager (packer)
    use 'ellisonleao/gruvbox.nvim' -- sweet grubvox colorscheme
    use 'kyazdani42/nvim-web-devicons' -- devicons for aesthetic
    use 'nvim-lualine/lualine.nvim' -- statusline for neovim written in lua
    use 'kyazdani42/nvim-tree.lua' -- file explorer
    use {'romgrk/barbar.nvim', requires = 'nvim-web-devicons'} -- barbar: tablike feature
    -- use 'sunjon/shade.nvim' -- dims inactive windows
    use 'jiangmiao/auto-pairs' -- auto pairs for '(' '[' '{'
    use 'preservim/nerdcommenter' -- auto comment lines

    -- -> TREESITTER PLUGINS
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' } -- neovim treesitter
    use 'nvim-treesitter/nvim-treesitter-refactor' -- refactor modules for nvim treesitter

    -- -> LSP PLUGINS
    use 'neovim/nvim-lspconfig' -- LSP Config
    use 'hrsh7th/nvim-cmp' -- autocompletion for nvim-cmp
    use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
    use 'saadparwaiz1/cmp_luasnip' -- snippets source for nvim-cmp
    use 'L3MON4D3/LuaSnip' -- snippets plugin
    use 'onsails/lspkind-nvim' -- pictograms for lsp

    -- -> TELESCOPE PLUGINS
    use 'nvim-lua/plenary.nvim' -- dependency needed for telescope.nvim
    use 'nvim-telescope/telescope.nvim'
end)
