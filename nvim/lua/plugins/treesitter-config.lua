require 'nvim-treesitter.configs'.setup {
  ensure_installed = { "elixir", "heex", "surface", "json", "lua" },
  context_commentstring = {
    enable = true
  },
  highlight = {
    enable = true,
  },
  indent = {
    enable = true
  },
  playground = {
    enable = true
  }
}
