vim.opt.background = "dark"

-- Kanagawa --
-- Remeber to run :KanagawaCompile after changes.
require('kanagawa').setup({
  theme = "dragon",
  compile = true,     -- enable compiling the colorscheme
  transparent = true, -- do not set background color
  colors = {
    theme = {
      all = {
        ui = {
          bg_gutter = "none"
        }
      }
    }
  }
})

vim.cmd('colorscheme kanagawa')
