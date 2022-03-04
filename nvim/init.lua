require('basics')
require('colors')
require('telescope-config')
require('coc-config')
require('fugitive-config')

return require('packer').startup(function(use)
  -- Package manager
  use 'wbthomason/packer.nvim'
  -- Elixir specific
  use 'elixir-editors/vim-elixir'
  -- JS/React specific
  use 'pangloss/vim-javascript'
  use 'mxw/vim-jsx'
  -- LSP Client
  use {'neoclide/coc.nvim', branch = 'release'}
  -- Theme
  use 'folke/tokyonight.nvim'
  -- Quick comments
  use 'tpope/vim-commentary'
  -- Git interface
  use 'tpope/vim-fugitive'
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
  -- Nice icons
  use "kyazdani42/nvim-web-devicons"
  -- Automatically close (, { and [
  use 'jiangmiao/auto-pairs'
  -- Quickly surround words/selections with tags, "", '' etc...
  use {
    "blackCauldron7/surround.nvim",
    config = function()
      require"surround".setup {mappings_style = "surround"}
    end
  }
end)
