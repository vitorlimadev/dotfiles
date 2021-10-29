if !exists('g:lspconfig')
  finish
endif

lua << EOF
local nvim_lsp = require('lspconfig')
local protocol = require'vim.lsp.protocol'

local on_attach = function(client, bufnr)
	-- Format on save

  -- if client.resolved_capabilities.document_formatting then
  --   vim.api.nvim_command [[augroup Format]]
  --   vim.api.nvim_command [[autocmd! * <buffer>]]
  --   vim.api.nvim_command [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync()]]
  --   vim.api.nvim_command [[augroup END]]
  -- end
end

require'lspconfig'.solargraph.setup{
	on_attach = on_attach
}

require'lspconfig'.elixirls.setup{
	on_attach = on_attach,
	cmd = { '/home/vitor/elixir/elixir-ls/release/erl23/language_server.sh' }
}

EOF
