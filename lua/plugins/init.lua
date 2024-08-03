return require('packer').startup(function(use)
    --> Essentials
    use 'wbthomason/packer.nvim' -- Neovim plugin manager
    use 'ellisonleao/gruvbox.nvim' -- sweet gruvbox colorscheme
    use 'nvim-lualine/lualine.nvim' -- statusline for neovim written in lua
    use 'kyazdani42/nvim-tree.lua' -- file explorer for neovim

    --> Treesitter plugins
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
    use 'nvim-treesitter/nvim-treesitter-refactor' -- refactor modules for nvim treesitter

    --> Telescope plugins
    use {'nvim-telescope/telescope.nvim', requires = 'nvim-lua/plenary.nvim'}
end)
