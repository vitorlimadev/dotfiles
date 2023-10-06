------------------------------------
-------- Mneumonical remaps --------
------------------------------------

-- [ F ]ile [ R ]ename
vim.api.nvim_set_keymap('n', '<leader>fe', ':Explore<CR>', { noremap = true, silent = true })

-- [ T ]ext [ R ]eplace
vim.api.nvim_set_keymap('n', '<leader>tr', ':%s//g<Left><Left>', { noremap = true })

-- [ K ]ill [ B ]uffer
vim.api.nvim_set_keymap('n', '<leader>kb', ':Bdelete<CR>', { noremap = true, silent = true })

-- [ K ]ill [ F ]ile and buffer
-- vim.api.nvim_set_keymap('n', '<leader>kf', ':Delete<CR>', { noremap = true, silent = true })

-- [ K ]ill [ D ]irectory where buffer is located
-- vim.api.nvim_set_keymap('n', '<leader>kd', ':!rm -rf %:h<CR> :Bdelete', { noremap = true, silent = true })

------------------------------------
------ Non mneumonical remaps ------
------------------------------------

-- Copy and paste from system clipboard
vim.api.nvim_set_keymap('v', '<C-c>', '"+y', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-v>', '"+p', { noremap = true, silent = true })

-- Navigate splits more easily
vim.api.nvim_set_keymap('n', '<C-H>', '<C-W><C-H>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-J>', '<C-W><C-J>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-K>', '<C-W><C-K>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-L>', '<C-W><C-L>', { noremap = true, silent = true })

-- Resize splits
vim.api.nvim_set_keymap('n', '<Up>', ':resize -2<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Down>', ':resize +2<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Left>', ':vertical resize +2<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Right>', ':vertical resize -2<CR>', { noremap = true, silent = true })

-- Navigate buffers
vim.api.nvim_set_keymap('n', '<S-h>', ':BufferLineCyclePrev<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<S-l>', ':BufferLineCycleNext<CR>', { noremap = true, silent = true })
