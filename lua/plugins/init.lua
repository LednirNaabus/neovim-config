return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim' -- Neovim plugin manager
    use 'ellisonleao/gruvbox.nvim' -- sweet gruvbox colorscheme

    --> TREESITTER PLUGINS
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
    use 'nvim-treesitter/nvim-treesitter-refactor' -- refactor modules for nvim treesitter

    --> TELESCOPE PLUGINS
    use {'nvim-telescope/telescope.nvim', requires = 'nvim-lua/plenary.nvim'}
end)
