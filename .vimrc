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
set nohlsearch
set hidden
set updatetime=300
set shortmess+=c
set splitbelow

" GVIM settings
set guioptions-=T  "toolbar
set guioptions-=r  "scrollbar
set guioptions-=m  "menu bar

" Terminal
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

" Focus mode
map <silent> <Leader>fm :Goyo<CR>

" ----- Files/Buffers -----

" File tree
nnoremap <silent> <Leader>ft :NERDTreeToggle<CR>
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
nmap <Leader>ps :Rg<SPACE>

" ----- CoC -----

" Goto definition
nmap <silent> <Leader>gtd <Plug>(coc-definition)

" Goto implementation
nmap <silent> <Leader>gti <Plug>(coc-implementation)

" Goto references
nmap <silent> <Leader>gtr <Plug>(coc-references)

" Code navigation and diagnostics keybindings.
nmap <silent> <Leader>wp <Plug>(coc-diagnostic-prev)
nmap <silent> <Leader>wn <Plug>(coc-diagnostic-next)

" TAB to trigger completion with characters ahead and navigate.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Show documentation
nnoremap <silent> <Leader>h :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Navigate in documentation panel
nnoremap <nowait><expr> <C-j> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-j>"
nnoremap <nowait><expr> <C-k> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-k>"
inoremap <nowait><expr> <C-j> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
inoremap <nowait><expr> <C-k> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"

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










" ---------- Plugins ----------

call plug#begin('~/.vim/plugged')

" File tree
Plug 'preservim/nerdtree'
" Autocomplete
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Fuzzy finders
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'jremmen/vim-ripgrep'
" Elixir specific
Plug 'elixir-editors/vim-elixir'
Plug 'tpope/vim-endwise'
" Git integration
Plug 'tpope/vim-fugitive'
" Fixes buffer delete command
Plug 'orlp/vim-bunlink'
" Theme
Plug 'joshdick/onedark.vim'

call plug#end()

colorscheme onedark

let g:coc_global_extensions = ['coc-elixir', 'coc-clangd', 'coc-vimlsp', 'coc-html']
