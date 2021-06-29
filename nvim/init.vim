"------- Personal preferences ----------

syntax enable
set number
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
set signcolumn=yes
set nohlsearch
set hidden
set cmdheight=2
set updatetime=300
set shortmess+=c










" ---------- Remaps ----------

" Remaping leader to space
let mapleader=" "
nnoremap <SPACE> <Nop>

" Copying/pasting with system's native copy/paste
vnoremap <C-y> "+y
map <C-p> "+p

" Open file explorer
nmap <silent> <Leader>fe :EditVifm<CR>

" Buffers list
map <silent> <Leader>b :Buffers<CR>

" Kill current buffer
map <silent> <Leader>kb :bdelete<CR>

" Open terminal
nmap <silent> <Leader>t :sp term://zsh<CR>

" Remaping the weird shortcut to exit terminal mode
tnoremap <C-\> <C-\><C-n>

" Project wide search
nmap <Leader>ps :Rg<SPACE>

" File search (only works in Git repo)
map <silent> <Leader>fs :GFiles<CR>

" Code navigation and diagnostics keybindings.
nmap <silent> <Leader>wp <Plug>(coc-diagnostic-prev)
nmap <silent> <Leader>wn <Plug>(coc-diagnostic-next)

" Goto definition
nmap <silent> <Leader>gtd <Plug>(coc-definition)

" Goto implementation
nmap <silent> <Leader>gti <Plug>(coc-implementation)

" Goto references
nmap <silent> <Leader>gtr <Plug>(coc-references)

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

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

" Resizing vertical windows
nmap <silent> <Up> :resize -2<CR>
nmap <silent> <Down> :resize +2<CR>
nmap <silent> <Left> :vertical resize -2<CR>
nmap <silent> <Right> :vertical resize +2<CR>

" ----- GIT -----

" Git files
map <silent> <Leader>gf :GFiles?<CR>

" Git status
map <silent> <Leader>gs :Git<CR>

" Select left change/diff (inside :Gvdiffsplit)
map <silent> <Leader>gdl :diffget //2

" Select right change/diff (inside :Gvdiffsplit)
map <silent> <Leader>gdr :diffget //3

" Git commit
map <silent> <Leader>gc :Git commit<CR>

" Git log
map <silent> <Leader>gl :Git log<CR>

" Git push
map <silent> <Leader>gp :Git push<CR>










" ---------- Plugins ----------

call plug#begin('~/.vim/plugged')

" Autocomplete
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Fuzzy finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" Project search
Plug 'jremmen/vim-ripgrep'
" Themes
Plug 'drewtempelmeyer/palenight.vim'
" Elixir specific
Plug 'elixir-editors/vim-elixir'
Plug 'tpope/vim-endwise'
" Git integration
Plug 'tpope/vim-fugitive'
" File tree
Plug 'vifm/vifm.vim'

call plug#end()










" ---------- Theme ---------- 

colorscheme palenight
let g:lightline = { 'colorscheme': 'palenight' }

" Always transparent background
hi Normal guibg=NONE ctermbg=NONE










" ---------- Coc config ----------

let g:coc_global_extensions = [
	\ 'coc-elixir',
	\ ]

" Autoformat elixir files
autocmd FileType elixir setlocal formatprg=mix\ format\ -
