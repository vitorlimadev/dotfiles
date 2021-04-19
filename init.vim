" ---------- Personal preferences ----------

syntax enable
set guicursor=
set number
set relativenumber
set scrolloff=8         
set sidescrolloff=15
set sidescroll=1
set noswapfile
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
set colorcolumn=100
set nohlsearch
highlight ColorColumn ctermbg=grey





" ---------- Remaps ----------

" Mapping leader key to space
" nnoremap <SPACE> <Nop>
" let mapleader=" "

" Kill current buffer
map <silent> <Leader>kb :bdelete<CR>

" Buffers list
map <silent> <Leader>b :Buffers<CR>

" Git repo file navigation
map <silent> <Leader>gf :GFiles<CR>

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





" ---------- Plugins ----------

call plug#begin(stdpath('data') . '/plugged')

" Autocomplete
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Project manager
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" Theme
Plug 'arcticicestudio/nord-vim'
" Elixir specific
Plug 'elixir-editors/vim-elixir'

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

