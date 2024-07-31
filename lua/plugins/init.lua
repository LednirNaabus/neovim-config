return require'packer'.startup(function()
    -- -> Essentials
    use 'christoomey/vim-tmux-navigator' -- seamless navigation between tmux panes and vim splits
    use 'wbthomason/packer.nvim' -- plugin manager (packer)
    use 'ellisonleao/gruvbox.nvim' -- sweet gruvbox colorscheme
    use 'nvim-lualine/lualine.nvim' -- statusline for neovim written in lua
    use 'kyazdani42/nvim-tree.lua' -- file explorer
    use 'kyazdani42/nvim-web-devicons' -- devicons
    use {'romgrk/barbar.nvim', requires = 'nvim-web-devicons' } -- barbar: tablike feature
    use 'jiangmiao/auto-pairs' -- auto pairs for brackets
    use 'preservim/nerdcommenter' -- auto comment lines

    -- -> TREESITTER PLUGINS
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'} -- neovim treesitter
    use 'nvim-treesitter/nvim-treesitter-refactor' -- refactor modules for nvim treesitter
    
    -- -> LSP PLUGINS AND FUNCTIONALITY
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            --- Uncomment the two plugins below if you want to manage the language servers from neovim
             {'williamboman/mason.nvim'},
             {'williamboman/mason-lspconfig.nvim'},

             -- some additional requirements
            {'neovim/nvim-lspconfig'},
            {'hrsh7th/nvim-cmp'}, -- autocompletion
            {'hrsh7th/cmp-nvim-lsp'}, -- LSP source for nvim-cmp
            {'L3MON4D3/LuaSnip'}, -- snippets plugin
            {'onsails/lspkind-nvim'}, -- pictograms for lsp
        }
    }

    -- -> TELESCOPE PLUGINS
    use {'nvim-telescope/telescope.nvim', requires = 'nvim-lua/plenary.nvim'}
end)
