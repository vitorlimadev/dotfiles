vim.g.mapleader = " "
vim.o.number  =true
-- vim.o.relativenumber = true
vim.o.wrap = false
vim.o.expandtab = true
vim.o.incsearch = true
vim.o.tabstop = 2
vim.o.cursorline = true
vim.o.ignorecase = true
vim.o.hlsearch = false
vim.o.swapfile = false
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.scrolloff = 10
vim.o.errorbells = false
vim.o.shiftwidth = 2
vim.o.numberwidth = 4
vim.o.termguicolors = true
vim.o.showmode = false
vim.o.signcolumn = 'yes'
vim.o.mouse = 'a'
vim.cmd([[let g:neovide_fullscreen=1]])
vim.cmd([[set guifont=UbuntuMono\ Nerd\ Font\ Mono:h18]])

vim.api.nvim_set_keymap('n', 'vs', ':vs<CR>', { noremap = true, silent = true  })
vim.api.nvim_set_keymap('n', 'sp', ':sp<CR>', { noremap = true, silent = true  })
vim.api.nvim_set_keymap('v', '<C-y>', '"+y', { noremap = true, silent = true  })
vim.api.nvim_set_keymap('n', '<C-p>', '"+p', { noremap = true, silent = true  })
vim.api.nvim_set_keymap('n', '<C-L>', '<C-W><C-L>', { noremap = true, silent = true  })
vim.api.nvim_set_keymap('n', '<C-H>', '<C-W><C-H>', { noremap = true, silent = true  })
vim.api.nvim_set_keymap('n', '<C-K>', '<C-W><C-K>', { noremap = true, silent = true  })
vim.api.nvim_set_keymap('n', '<C-J>', '<C-W><C-J>', { noremap = true, silent = true  })
vim.api.nvim_set_keymap('n', '<Up>', ':resize -2<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Down>', ':resize +2<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Left>', ':vertical resize -2<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Right>', ':vertical resize +2<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>[', ':bprev<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>]', ':bnext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>kb', ':Bdelete<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>r', ':%s/', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>e', ':NvimTreeToggle<CR>', { noremap = true, silent = true  })
vim.api.nvim_set_keymap('n', '<leader>t', ':sp<CR> :term<CR> :resize 5N<CR> i', {noremap = true, silent = true})
vim.api.nvim_set_keymap('t', '<Esc>', '<C-\\><C-n>', {noremap = true, silent = true})

vim.g["netrw_banner"] = 0
vim.g["netrw_liststyle"] = 3
vim.g["netrw_winsize"] = 25

