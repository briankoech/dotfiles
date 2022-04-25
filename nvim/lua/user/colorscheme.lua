vim.cmd [[
  try
    colorscheme gruvbox-material
  catch /^Vim\%((\a\+)\)\=:E185/
    colorscheme default
    set background=dark
  endtry
]]

local colorscheme = "gruvbox-material"

local status_ok, _ = pcall(vim.cmd, "colorscheme" .. colorscheme)

if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found")
  return
end

if (colorscheme == "gruvbox-material") then
  vim.g.gruvbox_material_background = "hard"
  vim.g.gruvbox_material_perfomance = 1
  vim.g.gruvbox_material_disable_italic_comment = 1
end
