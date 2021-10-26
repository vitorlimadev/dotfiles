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

" ---------- Files/Buffers ----------

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

" ---------- GIT ----------

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

" ---------- Mix ----------

nmap <silent> <Leader>mf :call <SID>mix_format()<CR>
nmap <silent> <Leader>mt :call <SID>mix_test()<CR>

function s:mix_format()
	execute '!mix format %'
endfunction

function s:mix_test()
	execute '!mix test %:' . line(".")
endfunction
