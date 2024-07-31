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
    
    -- -> LSP PLUGINS

    -- -> TELESCOPE PLUGINS
end)
