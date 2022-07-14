require'nvim-treesitter.configs'.setup {
  ensure_installed = { "elixir" },
  context_commentstring = {
    enable = true
  },
  highlight = {
    enable = true,
  },
  indent = {
    enable = true
  }
}
