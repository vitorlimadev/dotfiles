vim.api.nvim_set_keymap('n', 'gs', ":Git <CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'gl', ":Git log <CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'gb', ":Git blame <CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'gp', ":Git push <CR>", { noremap = true, silent = true })
