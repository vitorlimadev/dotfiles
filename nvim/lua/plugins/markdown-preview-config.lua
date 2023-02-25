vim.g.mkdp_filetypes = { "markdown" }

vim.api.nvim_set_keymap('n', '<leader>m', ':MarkdownPreviewToggle<CR>', { noremap = true, silent = true })
