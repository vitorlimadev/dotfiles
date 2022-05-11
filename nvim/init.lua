require('basics')
require('colors')
require('telescope-config')
require('lsp-config')
require('fugitive-config')

require'nvim-treesitter.configs'.setup {
  ensure_installed = { "javascript", "elixir", "ruby" },
  context_commentstring = {
    enable = true
  },
  highlight = {
    enable = true,
  },
  indent = {
    enable = true
  }
}

return require('packer').startup(function(use)
  -- Package manager
  use 'wbthomason/packer.nvim'
  -- LSP Client
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  use 'L3MON4D3/LuaSnip' -- Snippets plugin
  use 'nvim-treesitter/nvim-treesitter'
  -- Snippets
  use 'honza/vim-snippets'
  -- Theme
  use 'arcticicestudio/nord-vim'
  -- Quick comments
  use 'tpope/vim-commentary'
  -- Git interface
  use 'tpope/vim-fugitive'
  -- Quickly surround words/selections with tags, "", '' etc...
  use 'tpope/vim-surround'
  -- Fixes buffer delete to not delete windows
  use 'moll/vim-bbye'
  -- Fuzzy finder
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  -- File tree
  use {
    'kyazdani42/nvim-tree.lua',
    config = function() require'nvim-tree'.setup {} end
  }
  -- Automatically close (, { and [
  use 'jiangmiao/auto-pairs'
  -- Nice icons
  use "kyazdani42/nvim-web-devicons"
end)
