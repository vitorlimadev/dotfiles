require('tokyonight').setup({
  style = "night",
  -- transparent = true,
  -- transparent_sidebar = true,
  -- styles = {
  --   sidebars = "transparent"
  -- }
})
vim.o.termguicolors = true

vim.opt.background = "dark"
vim.cmd [[colorscheme tokyonight]]
