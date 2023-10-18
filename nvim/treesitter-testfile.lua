-- local bufnr = 1
-- local langtree = vim.treesitter.get_parser(bufnr, 'surface')
-- local stree = langtree:parse()
-- local root = stree[1]:root()

-- local query = vim.treesitter.query.parse('surface', [[
--     (attribute
--       (attribute_name) @name
--       (quoted_attribute_value (attribute_value) @value)
--       (#eq? @name "class"))
-- ]])

-- for _, matches, _metadata in query:iter_matches(root, bufnr) do
--   print(
--     vim.inspect(
--       vim.treesitter.get_node_text(matches[2], bufnr)
--     )
--   )
-- end
