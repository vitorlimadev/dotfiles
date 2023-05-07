local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>fs', builtin.find_files, {})
vim.keymap.set('n', '<leader>ws', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fo', builtin.oldfiles, {})
vim.keymap.set('n', '<leader>b', builtin.buffers, {})
