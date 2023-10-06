require('nvim-tree').setup {
  filters = {
    dotfiles = false
  },
  view = {
    width = 40
  }
}

-- Open filetree
vim.api.nvim_set_keymap('n', '<leader>e', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
