require('packer').startup(function(use)
  -- Package manager
  use 'wbthomason/packer.nvim'
  -- LSP Client tools
  use 'neovim/nvim-lspconfig' -- LSP Configuration
  use 'nvim-treesitter/nvim-treesitter' -- Improves LSP functionalities
  use {
    'hrsh7th/nvim-cmp', -- Autocompletion plugin
    requires = { { 'hrsh7th/cmp-nvim-lsp' } }
  }
  use 'j-hui/fidget.nvim' -- Shows LSP progress
  use {
    "utilyre/barbecue.nvim",
    tag = "*",
    requires = { "SmiteshP/nvim-navic" }
  }
  -- Git interface
  use 'tpope/vim-fugitive'
  use 'airblade/vim-gitgutter'
  use {
    'pwntester/octo.nvim', -- Github tools
    requires = {
      'nvim-lua/plenary.nvim',
      'nvim-telescope/telescope.nvim',
      'kyazdani42/nvim-web-devicons',
    },
    config = function()
      require "octo".setup()
    end
  }
  -- File search, search for word occourencies in a project, file history.
  use {
    'junegunn/fzf',
    run = ":call fzf#install()",
    requires = { { 'junegunn/fzf.vim' } }
  }
  -- File tree
  use 'kyazdani42/nvim-tree.lua'
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
  use 'nvim-tree/nvim-web-devicons'
  -- Statusline
  use 'nvim-lualine/lualine.nvim'
  -- Elixir
  use 'elixir-editors/vim-elixir'
end)
