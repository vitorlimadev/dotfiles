if !exists('g:lspconfig')
	finish
endif

lua << EOF
local nvim_lsp = require('lspconfig')
local protocol = require('vim.lsp.protocol')


local on_attach = function(client, bufnr)
	local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
	local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

	-- Mappings
	local opts = { noremap = true, silent = true}

	buf_set_keymap('n', '<Leader>gtd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
	buf_set_keymap('n', '<Leader>h', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)

	-- Format on save
  if client.resolved_capabilities.document_formatting then
    vim.api.nvim_command [[augroup Format]]
    vim.api.nvim_command [[autocmd! * <buffer>]]
		vim.api.nvim_command [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync(nil, 1000)]]
    vim.api.nvim_command [[augroup END]]
  end

	-- Autocompletion
	require 'completion'.on_attach(client, bufnr)
end

require'lspconfig'.elixirls.setup{
	on_attach = on_attach,
	cmd = { "/home/vitor/elixir/elixir-ls/release/erl23/language_server.sh" }
}
EOF
