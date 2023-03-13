local status_ok, nvimtree = pcall(require, "nvim-tree")

if not status_ok then
	return
end

local config_status_ok, nvim_tree_config = pcall(require, "nvim-tree.config")
if not config_status_ok then
	return
end

local tree_cb = nvim_tree_config.nvim_tree_callback

--[[
--
vim.api.nvim_create_autocmd('BufEnter', {
  nested = true,
  callback = function() 
    if #vim.api.nvim_list_wins() == 1 and vim.api.nvim_buf_get_name(0):match('NvimTree_') ~= nil then
      vim.cmd 'quit'
    end
  end
})
--]]

nvimtree.setup({
	hijack_netrw = true,
	diagnostics = {
		enable = true,
	},
	view = {
		adaptive_size = true,
		width = 30,
		hide_root_folder = false,
		side = "left",
		mappings = {
			list = {
				{ key = "u", action = "dir_up" },
				{ key = { "l", "<CR>", "o" }, cb = tree_cb("edit") },
				{ key = "h", cb = tree_cb("close_node") },
				{ key = "v", cb = tree_cb("vsplit") },
			},
		},
	}
})
