require 'nvim-treesitter.configs'.setup {
  ensure_installed = { "elixir", "json", "c" },
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
