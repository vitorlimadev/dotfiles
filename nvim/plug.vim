" ---------- Plugins ----------

call plug#begin(stdpath('data') . '/plugged')

" LSP
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'

Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
" Fuzzy finder, ripgrep
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'nvim-lua/popup.nvim'
" Tests
Plug 'vim-test/vim-test'
" Elixir specific
Plug 'elixir-editors/vim-elixir'
" JS specific
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
" Git integration
Plug 'tpope/vim-fugitive'
" Fixes buffer delete command
Plug 'orlp/vim-bunlink'
" Surrond words/sentences in tags
Plug 'tpope/vim-surround'
" Comment lines/words
Plug 'tpope/vim-commentary'
" Theme
Plug 'joshdick/onedark.vim'
" Status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Icons
Plug 'kyazdani42/nvim-web-devicons'
" File tree
Plug 'kyazdani42/nvim-tree.lua'
" Put end after do in Elixir/Ruby
Plug 'tpope/vim-endwise'
" Auto-close (,{,[, etc...
Plug 'jiangmiao/auto-pairs'

call plug#end()

colorscheme onedark
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline_theme='raven'
hi Normal guibg=NONE ctermbg=NONE
