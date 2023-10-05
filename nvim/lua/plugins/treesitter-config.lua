require 'nvim-treesitter.configs'.setup {
  ensure_installed = { "elixir", "json", "rust", "lua" },
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
