if !exists('g:lspconfig')
  finish
endif

lua << EOF
local nvim_lsp = require('lspconfig')
local protocol = require'vim.lsp.protocol'

local on_attach = function(client, bufnr)
	-- Format on save

  if client.resolved_capabilities.document_formatting then
    vim.api.nvim_command [[augroup Format]]
    vim.api.nvim_command [[autocmd! * <buffer>]]
    vim.api.nvim_command [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync()]]
    vim.api.nvim_command [[augroup END]]
  end
end

local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

require'lspconfig'.solargraph.setup{
	on_attach = on_attach,
	capabilities = capabilities
}

require'lspconfig'.elixirls.setup{
	cmd = { '/home/viktor/elixir/elixir-ls/release/erl24/language_server.sh' },
	capabilities = capabilities
}

require'lspconfig'.tsserver.setup{
	on_attach = on_attach,
	capabilities = capabilities
}

EOF
