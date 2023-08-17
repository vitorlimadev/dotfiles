local toggleterm = require("toggleterm")

toggleterm.setup({
  open_mapping = [[<C-\>]], -- Same to hide and persist session
  direction = 'float',
  float_opts = {
    border = 'curved'
  }
})

-- Remap exit terminal mode hotkey
vim.api.nvim_set_keymap('t', '<C-d>', '<C-\\><C-n>', { noremap = true, silent = true })

-- Test project
vim.api.nvim_set_keymap(
  'n',
  '<leader>tp',
  ':TermExec cmd="run_tests" dir="."<CR>',
  { noremap = true, silent = true }
)

-- Test file
vim.api.nvim_set_keymap(
  'n',
  '<leader>tf',
  ':TermExec cmd="run_tests mix test %" dir="."<CR>',
  { noremap = true, silent = true }
)

-- Test on cursor
vim.api.nvim_set_keymap(
  'n',
  '<leader>tt',
  ':lua TestWithLineNumber()<CR>',
  { noremap = true, silent = true }
)

function TestWithLineNumber()
  local line_number = vim.fn.line('.')

  vim.cmd(
    string.format(
      ':TermExec cmd="run_tests mix test %%:%d" dir="."<CR>',
      line_number
    )
  )
end

-- Send selection to terminal (changes ' to " for compatibility)
vim.api.nvim_set_keymap(
  'v',
  '<leader>ti',
  ':lua SendVLSelectToTerminal()<CR>',
  { noremap = true, silent = true }
)

function SendVLSelectToTerminal()
  local start_line = vim.fn.line("'<")
  local end_line = vim.fn.line("'>")

  local selected_text = vim.fn.getline(start_line, end_line)

  for _, text in ipairs(selected_text) do
    vim.cmd(":TermExec cmd='" .. text:gsub("'", '"') .. "'")
  end
end
