" ---------- Personal preferences ----------

syntax enable
set number
set relativenumber
set scrolloff=8         
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
set signcolumn=yes
set nohlsearch
" Autoformat elixir files
autocmd FileType elixir setlocal formatprg=mix\ format\ -





" ---------- Netrw ----------

" Hides top bar
let g:netrw_banner = 0
" Sets filetree mode
let g:netrw_liststyle = 3

" ---------- Remaps ----------





" Remaping leader to space
let mapleader=" "
nnoremap <SPACE> <Nop>

" Kill current buffer
map <silent> <Leader>kb :bdelete<CR>

" Buffers list
map <silent> <Leader>b :Buffers<CR>

" Project wide search
nmap <Leader>ps :Rg<SPACE>

" Open file explorer
nmap <silent> <Leader>fe :NERDTreeToggle<CR>
autocmd VimEnter * NERDTree | wincmd p

" File search (only works in Git repo)
map <silent> <Leader>fs :GFiles<CR>

" Git status
map <silent> <Leader>gs :GFiles?<CR>

" Code navigation and diagnostics keybindings.
nmap <silent> <Leader>wp <Plug>(coc-diagnostic-prev)
nmap <silent> <Leader>wn <Plug>(coc-diagnostic-next)

" Goto definition
nmap <silent> gtd <Plug>(coc-definition)

" Goto implementation
nmap <silent> gti <Plug>(coc-implementation)

" Goto references
nmap <silent> gtr <Plug>(coc-references)

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" TAB to trigger completion with characters ahead and navigate.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

" Show documentation
nnoremap <silent> H :call <SID>show_documentation()<CR>

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





" ---------- Plugins ----------

call plug#begin(stdpath('data') . '/plugged')

" Autocomplete
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Fuzzy finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" File tree
Plug 'preservim/nerdtree'
" Project search
Plug 'jremmen/vim-ripgrep'
" Theme
Plug 'arcticicestudio/nord-vim'
" Elixir specific
Plug 'elixir-editors/vim-elixir'
" Git integration
Plug 'jreybert/vimagit'

call plug#end()





" ---------- Theme ---------- 
colorscheme nord





" ---------- Coc config ----------
let g:coc_global_extensions = [
	\ 'coc-elixir',
	\ ]

" TextEdit might fail if hidden is not set.
set hidden

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

