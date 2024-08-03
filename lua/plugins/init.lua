return require('packer').startup(function(use)
    --> Essentials
    use 'wbthomason/packer.nvim' -- Neovim plugin manager
    use 'ellisonleao/gruvbox.nvim' -- sweet gruvbox colorscheme
    use 'nvim-lualine/lualine.nvim' -- statusline for neovim written in lua
    use 'kyazdani42/nvim-tree.lua' -- file explorer for neovim
    use 'kyazdani42/nvim-web-devicons' -- devicons
    use 'christoomey/vim-tmux-navigator' -- seamless navigation between tmux panes and vim splits
    use { 'romgrk/barbar.nvim', requires = 'nvim-web-devicons' } -- barbar: tablike feature
    use 'jiangmiao/auto-pairs' -- auto pairs for brackets
    use 'preservim/nerdcommenter' -- auto comment lines

    --> Treesitter plugins
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
    use 'nvim-treesitter/nvim-treesitter-refactor' -- refactor modules for nvim treesitter

    --> Telescope plugins
    use {'nvim-telescope/telescope.nvim', requires = 'nvim-lua/plenary.nvim'}
end)
