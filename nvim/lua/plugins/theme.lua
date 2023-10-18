vim.opt.background = "dark"

-- Rose pine --

-- require('rose-pine').setup({
--   variant = 'moon',
--   dim_nc_background = false,
--   disable_background = true,
--   disable_float_background = true
-- })

-- vim.cmd('colorscheme rose-pine')

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
