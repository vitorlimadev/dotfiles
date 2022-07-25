vim.g.mapleader = " "
vim.o.number = true
vim.o.relativenumber = true
vim.o.wrap = false
vim.o.expandtab = true
vim.o.incsearch = true
vim.o.smartindent = true
vim.o.tabstop = 2
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

-- Use gray instead of purple on Popup Menus (useless if you use a theme)
vim.cmd[[highlight Pmenu ctermbg=gray guibg=gray]]

-- Copy and paste from system clipboard
vim.api.nvim_set_keymap('v', '<C-y>', '"+y', { noremap = true, silent = true  })
vim.api.nvim_set_keymap('n', '<C-p>', '"+p', { noremap = true, silent = true  })

-- Navigate splits more easily
vim.api.nvim_set_keymap('n', '<C-H>', '<C-W><C-H>', { noremap = true, silent = true  })
vim.api.nvim_set_keymap('n', '<C-J>', '<C-W><C-J>', { noremap = true, silent = true  })
vim.api.nvim_set_keymap('n', '<C-K>', '<C-W><C-K>', { noremap = true, silent = true  })
vim.api.nvim_set_keymap('n', '<C-L>', '<C-W><C-L>', { noremap = true, silent = true  })

-- Resize splits
vim.api.nvim_set_keymap('n', '<Up>', ':resize -2<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Down>', ':resize +2<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Left>', ':vertical resize -2<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Right>', ':vertical resize +2<CR>', { noremap = true, silent = true })

-- Navigate buffers
vim.api.nvim_set_keymap('n', '[', ':bprev<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', ']', ':bnext<CR>', { noremap = true, silent = true })

-- Replace text
vim.api.nvim_set_keymap('n', '<leader>r', ':%s//g<Left><Left>', { noremap = true })

-- Delete buffer
vim.api.nvim_set_keymap('n', '<leader>kb', ':Bdelete<CR>', { noremap = true, silent = true })

-- Open file tree
vim.api.nvim_set_keymap('n', '<leader>e', ':NvimTreeToggle<CR>', { noremap = true, silent = true  })

-- File tree config
vim.g["netrw_banner"] = 0
vim.g["netrw_liststyle"] = 3
vim.g["netrw_winsize"] = 25

-- Integrated Terminal specific
vim.api.nvim_set_keymap('n', '<leader>t', ':term<CR>', { noremap = true, silent = true  }) -- Open terminal
vim.api.nvim_set_keymap('t', '<Esc>', '<C-\\><C-N>', { noremap = true, silent = true  }) -- Go back to normal mode after using terminal
vim.cmd[[autocmd TermOpen * setlocal nonumber norelativenumber]] -- No line numbers on terminal
