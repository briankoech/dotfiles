local status_ok, null_ls = pcall(require, 'null-ls')
if not status_ok then
  return
end

-- https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md
-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
local formatting = null_ls.builtins.formatting
-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
-- local diagnostics = null_ls.builtins.diagnostics

-- local actions = null_ls.builtins.code_actions
local sources = {
    formatting.prettier
}

null_ls.setup {
  debug = true,
  sources = {
    formatting.prettier.with { extra_args = { "--single-quote", "--jsx-single-quote" } },
    formatting.stylua
  }
}
    -- formatting.black.with { extra_args = { "--fast" } },
    -- formatting.yapf,
    --    formatting.stylua,
    -- diagnostics.flake8,

