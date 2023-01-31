if vim.g.neovide == true then
  require('tokyonight').setup({ style = "night" })

  vim.cmd [[set guifont=Hasklug\ Nerd\ Font:h16]]
else
  require('tokyonight').setup({
    style = "night",
    transparent = true,
    transparent_sidebar = true,
    styles = {
      sidebars = "transparent"
    }
  })
  vim.o.termguicolors = true
end

vim.opt.background = "dark"
vim.cmd [[colorscheme tokyonight]]
