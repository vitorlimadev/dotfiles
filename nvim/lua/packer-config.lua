require('packer').startup(function(use)
  -- Package manager
  use 'wbthomason/packer.nvim'

  -- Editor tools
  use 'neovim/nvim-lspconfig' -- LSP Configuration
  use 'nvim-treesitter/nvim-treesitter' -- Improves LSP functionalities
  use 'j-hui/fidget.nvim' -- Shows LSP progress
  use 'tpope/vim-fugitive' -- Git interface
  use 'lewis6991/gitsigns.nvim' -- Git utilities
  use 'kyazdani42/nvim-tree.lua' -- File tree
  use 'lukas-reineke/indent-blankline.nvim' -- Show identation as lines
  use { 'akinsho/bufferline.nvim', tag = 'v3.*' } -- Buffers as tabs on top of the editor
  use { 'hrsh7th/nvim-cmp', requires = { { 'hrsh7th/cmp-nvim-lsp' } } } -- Autocompletion plugin
  use { 'akinsho/toggleterm.nvim', tag = '*' } -- Persistent terminal (<C-d> to exit without persist)
  use {
    'iamcco/markdown-preview.nvim',
    run = 'cd app && npm install',
    ft = { 'markdown' }
  } -- Markdown preview tool
  use {
    "nvim-neotest/neotest",
    requires = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
      "antoinemadec/FixCursorHold.nvim",
      "jfpedroza/neotest-elixir",
    }
  } -- Testing tools

  -- Editor assets
  use 'folke/tokyonight.nvim' -- Theme
  use 'nvim-tree/nvim-web-devicons' -- Icons
  use 'nvim-lualine/lualine.nvim' -- Statusline
  use 'lewis6991/impatient.nvim' -- Improve startup speed
  use 'nvim-lua/plenary.nvim' -- Required by other plugins

  -- Editor actions
  use { 'nvim-telescope/telescope.nvim', tag = '0.1.1', } -- File search, search for word occourencies in a project, file history.
  use 'nvim-pack/nvim-spectre' -- Search and replace on project
  use 'tpope/vim-commentary' -- Comment a selection of text
  use 'tpope/vim-surround' -- Surround words/selections with tags, "", '' etc...
  use 'windwp/nvim-autopairs' -- Autoclose pairs of ', ", (, {, [, etc...
  use 'RRethy/vim-illuminate' -- Highlight exact same words on buffer
  use 'tpope/vim-endwise' -- Puts 'end' keyword on functions automatically
  use 'moll/vim-bbye' -- Fixes buffer deletion to not delete windows

  -- Language specific
  use 'elixir-editors/vim-elixir' -- Elixir
end)
