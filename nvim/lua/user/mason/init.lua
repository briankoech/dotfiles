local status_ok, mason = pcall(require, 'mason')
if not status_ok then
  return
end

local status_ok, lspconfig = pcall(require, 'mason-lspconfig')
if not status_ok then
  return
end


local servers = { "jsonls", "sumneko_lua", "tsserver", "angularls", "omnisharp" }

-- todo: add always install servers
mason.setup({})

lspconfig.setup({
  automatic_installation = true,
  ensure_installed = servers
})

