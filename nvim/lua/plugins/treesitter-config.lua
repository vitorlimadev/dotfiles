require 'nvim-treesitter.configs'.setup {
  ensure_installed = { "elixir", "json", "lua" },
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
