require('packer').startup(function(use)
  -- Package manager
  use 'wbthomason/packer.nvim'
  -- LSP Client tools
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  use 'L3MON4D3/LuaSnip' -- Snippets plugin
  use 'nvim-treesitter/nvim-treesitter'
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
  -- Fixes buffer deletion to not delete windows
  use 'moll/vim-bbye'
  -- Icons
  use "kyazdani42/nvim-web-devicons"
end)

require('basics')
require('lsp-config')
require('treesitter-config')
require('telescope-config')
require('fugitive-config')
