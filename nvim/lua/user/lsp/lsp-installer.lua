local status_ok, lsp_installer = pcall(require, "nvim-lsp-installer")
if not status_ok then
	return
end

-- Register a handler that will be called for all installed servers.
-- Alternatively, you may also register handlers on specific server instances instead (see example below).

local lspconfig = require("lspconfig")

local servers = { "jsonls", "sumneko_lua", "tsserver", "angularls" }

lsp_installer.setup {
  ensure_installed = servers
}

for _, server  in pairs(servers) do
  local opts = {
		on_attach = require("user.lsp.handlers").on_attach,
		capabilities = require("user.lsp.handlers").capabilities,
	}

  if server.name == "jsonls" then
	 	local jsonls_opts = require("user.lsp.settings.jsonls")
	 	opts = vim.tbl_deep_extend("force", jsonls_opts, opts)
	 end

	 if server.name == "sumneko_lua" then
	 	local sumneko_opts = require("user.lsp.settings.sumneko_lua")
	 	opts = vim.tbl_deep_extend("force", sumneko_opts, opts)
	 end

   lspconfig[server].setup(opts)
end

	

	 
	-- This setup() function is exactly the same as lspconfig's setup function.
	-- Refer to https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md

--[[
lsp_installer.setup {}

local status_ok, lspconfig = pcall(require, "lspconfig")
if not status_ok then
	return
end

local function on_attach(client, bufnr)

end

lspconfig.tsserver.setup { on_attach = on_attach }

lspconfig.sumneko_lua.setup { on_attach = on_attach }

--]]
