"------- Personal preferences ----------

syntax enable
set number
set relativenumber
set scrolloff=15         
set sidescrolloff=15
set sidescroll=1
set noswapfile
set notimeout
set nobackup
set nowritebackup
set smarttab
set shiftwidth=2
set softtabstop=2
set incsearch
set nowrap
set tabstop=2
set autoindent
" set signcolumn=yes
set nohlsearch
set hidden
set updatetime=300
set shortmess+=c
set splitbelow










" ---------- Remaps ----------


" Remaping leader to space
let mapleader=" "
nnoremap <SPACE> <Nop>

" File explorer
nnoremap <Leader>fe :NvimTreeToggle<CR>

" Copying/pasting with system's native copy/paste
vnoremap <C-y> "+y
noremap <C-p> "+p

" Buffers list
map <silent> <Leader>b <cmd>Telescope buffers<CR>

" Kill current buffer
map <silent> <Leader>kb :Bunlink<CR>

" Open terminal
nmap <silent> <Leader>t :new +resize8 term://zsh<CR>

" Remaping the weird shortcut to exit terminal mode
tnoremap <C-\> <C-\><C-n>

" Project wide search (needs ripgrep to work)
nmap <Leader>ps <cmd>Telescope live_grep<CR>

" File search
map <silent> <Leader>fs <cmd>Telescope find_files<CR>

" Resizing vertical windows
nmap <silent> <Up> :resize -2<CR>
nmap <silent> <Down> :resize +2<CR>
nmap <silent> <Left> :vertical resize -2<CR>
nmap <silent> <Right> :vertical resize +2<CR>

" Focus mode
map <silent> <Leader>fm :Goyo<CR>

" ----- GIT -----

" Git status
map <silent> <Leader>gs :Git<CR>

" Select left change/diff (inside :Gvdiffsplit)
map <silent> <Leader>gdl :diffget //2<CR>

" Select right change/diff (inside :Gvdiffsplit)
map <silent> <Leader>gdr :diffget //3<CR>

" Git commit
map <silent> <Leader>gc :Git commit<CR>

" Git log
map <silent> <Leader>gl :Git log<CR>

" Git push
map <silent> <Leader>gp :Git push<CR>

" Git blame
map <silent> <Leader>gb :Gblame<CR>










" ---------- Plugins ----------

call plug#begin('~/.vim/plugged')

" Autocomplete
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'
" Fuzzy finder
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
" Themes
" Plug 'drewtempelmeyer/palenight.vim'
" Elixir specific
Plug 'elixir-editors/vim-elixir'
Plug 'tpope/vim-endwise'
" Git integration
Plug 'tpope/vim-fugitive'
" Fixes buffer delete command
Plug 'orlp/vim-bunlink'
" File tree
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'
" Focus mode
Plug 'junegunn/goyo.vim'

call plug#end()










" ---------- Theme ---------- 

" colorscheme palenight

" Always transparent background
hi Normal guibg=NONE ctermbg=NONE
