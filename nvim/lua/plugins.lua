require('packer').startup(function(use)
  -- Package manager
  use 'wbthomason/packer.nvim'
  -- LSP Client tools
  use 'neovim/nvim-lspconfig' -- LSP Configuration
  use 'nvim-treesitter/nvim-treesitter' -- Improves LSP functionalities
  use {
    'hrsh7th/nvim-cmp', -- Autocompletion plugin
    requires = { {'hrsh7th/cmp-nvim-lsp'} }
  }
  -- Git interface
  use 'tpope/vim-fugitive'
  -- Telescope (File search, search for word occourencies in a project)
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  -- File tree
  use {
    'kyazdani42/nvim-tree.lua',
    config = function() require'nvim-tree'.setup {} end
  }
  -- Comment a selection of text
  use 'tpope/vim-commentary'
  -- Surround words/selections with tags, "", '' etc...
  use 'tpope/vim-surround'
  -- Puts "end" keyword on functions automatically
  use 'tpope/vim-endwise'
  -- Fixes buffer deletion to not delete windows
  use 'moll/vim-bbye'
  -- Theme
  use 'folke/tokyonight.nvim'
  -- Icons
  use "kyazdani42/nvim-web-devicons"
end)
