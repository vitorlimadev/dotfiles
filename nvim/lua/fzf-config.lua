-- local telescope = require("telescope")

-- telescope.setup {
--   pickers = {
--     find_files = {
--       theme = "ivy",
--     },
--     live_grep = {
--       theme = "ivy",
--     },
--     buffers = {
--       theme = "ivy",
--       mappings = {
--         i = {
--           ["<C-D>"] = "delete_buffer"
--         }
--       }
--     },
--     oldfiles = {
--       theme = "ivy",
--     }
--   }
-- }

-- vim.api.nvim_set_keymap('n', '<leader>fs', "<cmd>lua require('telescope.builtin').find_files()<CR>", { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>fs', ':GFiles<CR>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<leader>fo', "<cmd>lua require('telescope.builtin').oldfiles()<CR>", { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>fo', ':History<CR>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<leader>ps', "<cmd>lua require('telescope.builtin').live_grep()<CR>", { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>ps', ':Rg<CR>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<leader>b', "<cmd>lua require('telescope.builtin').buffers()<CR>", { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>b', ':Buffers<CR>', { noremap = true, silent = true })
