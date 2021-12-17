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

" File explorer
nnoremap <silent> <leader>fe :NvimTreeToggle<CR>

" File search
nnoremap <leader>fs <cmd>Telescope find_files<cr>

" Buffers list
nnoremap <leader>b <cmd>Telescope buffers<cr>

" Recent files
nnoremap <leader>fo <cmd>Telescope oldfiles<cr>

" Previous/Next buffer
map <leader>[ :bp<cr>
map <leader>] :bn<cr>

" Kill current buffer
map <silent> <Leader>kb :Bunlink<CR>

" Project wide search
nnoremap <leader>ps <cmd>Telescope live_grep<cr>

" ---------- GIT ----------

" Git files
map <silent> <Leader>gf :GFiles?<CR>

" Git status
map <silent> <Leader>gs :Git<CR>

" Git branches
nnoremap <leader>gbr <cmd>Telescope git_branches<cr>

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
map <silent> <Leader>gbl :Git blame<CR>

" ---------- LSP ----------

nnoremap <leader>ff <cmd>lua vim.lsp.buf.formatting_seq_sync()<cr>

" Go to definition
nnoremap <leader>gtd <cmd>lua vim.lsp.buf.definition()<cr>

" Show documentation
nnoremap <leader>h <cmd>lua vim.lsp.buf.hover()<cr>

" Refactor selected variable/function
nnoremap <leader>lrn <cmd>lua vim.lsp.buf.rename()<cr>

" Shows diagnostics on a popup
nnoremap <silent> <leader>ld <cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>

" ---------- Test ----------

" Test whole file
nmap <silent> <leader>tf :TestFile<CR>
" Run test in cursor
nmap <silent> <leader>tt :TestNearest<CR>
" Run all test suite
nmap <silent> <leader>ta :TestSuite<CR>
