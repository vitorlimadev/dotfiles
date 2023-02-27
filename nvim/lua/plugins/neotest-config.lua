require("neotest").setup({
  adapters = {
    require("neotest-elixir"),
  },
})

-- Mappings.
local opts = { noremap = true, silent = true }

vim.keymap.set('n', '<leader>tt', '<cmd>lua require("neotest").run.run()<CR>', opts) -- Test nearest test
vim.keymap.set('n', '<leader>tf', '<cmd>lua require("neotest").run.run(vim.fn.expand("%"))<CR>', opts) -- Test file
vim.keymap.set('n', '<leader>to', '<cmd>lua require("neotest").output.open({ enter = true })<CR>', opts) -- Open test info
vim.keymap.set('n', '<leader>tO', '<cmd>lua require("neotest").output_panel.open()<CR>', opts) -- Open test info
vim.keymap.set('n', '<leader>ts', '<cmd>lua require("neotest").run.stop()<CR>', opts) -- Stop running tests
