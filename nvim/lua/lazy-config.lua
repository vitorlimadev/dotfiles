local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

-- Plugins
require("lazy").setup({
  -- Theme
  { 'rebelot/kanagawa.nvim',             lazy = false },
  { 'nvim-tree/nvim-web-devicons',       lazy = false },
  { 'nvim-lua/plenary.nvim',             lazy = false },
  -- LSP
  { 'williamboman/mason.nvim', },
  { 'williamboman/mason-lspconfig.nvim', },
  { 'neovim/nvim-lspconfig', },
  {
    'hrsh7th/nvim-cmp',
    dependencies = { { 'hrsh7th/cmp-nvim-lsp' } }
  },
  { 'nvim-treesitter/nvim-treesitter' },
  -- Editor tools
  { 'kyazdani42/nvim-tree.lua',       lazy = false }, -- File tree
  { 'tpope/vim-fugitive' },                           -- Git interface
  { 'lewis6991/gitsigns.nvim' },                      -- Git utilities
  {
    'akinsho/git-conflict.nvim',
    version = "*",
    config = true
  },                                         -- Git conflict resolver
  { 'lukas-reineke/indent-blankline.nvim' }, -- Indent tabs/blanklines
  {
    'akinsho/toggleterm.nvim',
    version = "*",
    config = true
  },                               -- Persistent terminal (<C-d> to exit without persist)
  { 'nvim-lualine/lualine.nvim' }, -- Statusline
  -- Editor actions
  { 'nvim-telescope/telescope.nvim',      tag = '0.1.5' },
  { 'nvim-pack/nvim-spectre' },
  { 'tpope/vim-commentary' },
  { 'tpope/vim-surround' },
  { 'windwp/nvim-autopairs' },
  { 'RRethy/vim-illuminate' }, -- Highlight exact same words on buffer
  -- { 'tpope/vim-endwise',                  lazy = false },
  { 'moll/vim-bbye' },
  -- Language specific
  { 'elixir-editors/vim-elixir' },
  { 'amadeus/vim-mjml' }
})


-- require('packer').startup(function(use)
--   -- Package manager
--   use 'wbthomason/packer.nvim'
--
--   -- Editor tools
--   use 'neovim/nvim-lspconfig'                                           -- LSP Configuration
--   use 'kyazdani42/nvim-tree.lua'                                        -- File tree
--   use 'nvim-treesitter/nvim-treesitter'                                 -- Improves LSP functionalities
--   use 'tpope/vim-fugitive'                                              -- Git interface
--   use 'lewis6991/gitsigns.nvim'                                         -- Git utilities
--   use 'lukas-reineke/indent-blankline.nvim'                             -- Show identation as lines
--   use { 'hrsh7th/nvim-cmp', requires = { { 'hrsh7th/cmp-nvim-lsp' } } } -- Autocompletion plugin
--   use { 'akinsho/toggleterm.nvim', tag = '*' }                          -- Persistent terminal (<C-d> to exit without persist)
--   use 'nvim-lualine/lualine.nvim'                                       -- Statusline
--   use {
--     'iamcco/markdown-preview.nvim',
--     run = 'cd app && npm install',
--     ft = { 'markdown' }
--   } -- Markdown preview tool
--
--   -- Editor assets
--   use 'rebelot/kanagawa.nvim'                  -- Theme
--   use { 'rose-pine/neovim', as = 'rose-pine' } -- Theme
--   use 'nvim-lua/plenary.nvim'                  -- Required by other plugins
--   use 'nvim-tree/nvim-web-devicons'            -- Icons
--
--   -- Editor actions
--   use { 'nvim-telescope/telescope.nvim', tag = '0.1.4', } -- File search, search for word occourencies in a project, file history.
--   use 'nvim-pack/nvim-spectre'                            -- Search and replace on project
--   use 'tpope/vim-commentary'                              -- Comment a selection of text
--   use 'tpope/vim-surround'                                -- Surround words/selections with tags, "", '' etc...
--   use 'windwp/nvim-autopairs'                             -- Autoclose pairs of ', ", (, {, [, etc...
--   use 'RRethy/vim-illuminate'                             -- Highlight exact same words on buffer
--   use 'tpope/vim-endwise'                                 -- Puts 'end' keyword on functions automatically
--   use 'moll/vim-bbye'                                     -- Fixes buffer deletion to not delete windows
--   use 'tpope/vim-eunuch'                                  -- Unix commands helper
--   use {
--     'laytan/tailwind-sorter.nvim',
--     run = 'cd formatter && npm i && npm run build',
--   }-- Sorts TailwindCSS classes
--
--   -- Language specific
--   use 'elixir-editors/vim-elixir' -- Elixir
--
--   use 'nvim-treesitter/playground'
-- end)
