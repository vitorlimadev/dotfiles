"------- Personal preferences ----------

syntax enable
set background=dark
set autoread
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
set nohlsearch
set hidden
set updatetime=300
set shortmess+=c
set splitbelow
hi Normal guibg=NONE ctermbg=NONE











" ---------- Remaps ----------

" Remaping leader to space
let mapleader=" "
nnoremap <SPACE> <Nop>

" Copying/pasting with system's native copy/paste
vnoremap <C-y> "+y
map <C-p> "+p

" Resizing vertical windows
nmap <silent> <Up> :resize -2<CR>
nmap <silent> <Down> :resize +2<CR>
nmap <silent> <Left> :vertical resize -2<CR>
nmap <silent> <Right> :vertical resize +2<CR>

" ----- Files/Buffers -----

" File tree
nnoremap <silent> <Leader>fe :NERDTreeToggle<CR>
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif
" Remove help UI
let NERDTreeMinimalUI=1

" File search (only works in Git repo)
map <silent> <Leader>fs :GFiles<CR>

" Buffers list
map <silent> <Leader>b :Buffers<CR>

" Kill current buffer
map <silent> <Leader>kb :Bunlink<CR>

" Project wide search
nmap <Leader>ps :CtrlSF<SPACE>
let g:ctrlsf_default_root = 'git'

" ----- GIT -----

" Git files
map <silent> <Leader>gf :GFiles?<CR>

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

" ----- Mix -----

nmap <silent> <Leader>mf :call <SID>mix_format()<CR>
nmap <silent> <Leader>mt :call <SID>mix_test()<CR>

function s:mix_format()
	execute '!mix format %'
endfunction

function s:mix_test()
	execute '!mix test %:' . line(".")
endfunction











" ---------- Plugins ----------

call plug#begin(stdpath('data') . '/plugged')

" File tree
Plug 'preservim/nerdtree'
" Fuzzy finders
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'dyng/ctrlsf.vim'
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
" Theme
Plug 'joshdick/onedark.vim'

call plug#end()
