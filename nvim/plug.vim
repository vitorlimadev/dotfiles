" ---------- Plugins ----------

call plug#begin(stdpath('data') . '/plugged')

" LSP
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-cmp'
" Fuzzy finder
Plug 'nvim-telescope/telescope.nvim'
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
Plug 'joshdick/onedark.vim'

call plug#end()
