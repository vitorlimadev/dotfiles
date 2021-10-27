" ---------- Plugins ----------

call plug#begin(stdpath('data') . '/plugged')

" LSP
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
" Fuzzy finder
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'nvim-lua/popup.nvim'
" Elixir specific
Plug 'elixir-editors/vim-elixir'
" Put end after do in Elixir/Ruby
Plug 'tpope/vim-endwise'
" Git integration
Plug 'tpope/vim-fugitive'
" Fixes buffer delete command
Plug 'orlp/vim-bunlink'
" Discord Rich Presence
Plug 'vimsence/vimsence'
" Surrond words/sentences in tags
Plug 'tpope/vim-surround'
" Comment lines/words
Plug 'tpope/vim-commentary'
" Auto-close parenthesis, quotes, etc...
Plug 'windwp/nvim-autopairs'
" Theme
Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'
" Status line
Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'

call plug#end()

colorscheme onedark
hi Normal guibg=NONE ctermbg=NONE
