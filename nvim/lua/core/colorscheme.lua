--  COLORSCHEME

local status, _ = pcall(vim.cmd , "colorscheme moonfly")
if  not status  then
	print("Colorscheme moonfly not found")
	return
end

vim.moonflyCursorColor  = true
vim.moonflyUndercurls   = false
vim.moonflyNormalFloat  = true
vim.moonflyTransparent    = true

-- Lua initialization file
local custom_highlight = vim.api.nvim_create_augroup("CustomHighlight", {})
vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "moonfly",
  callback = function()
    vim.api.nvim_set_hl(0, "Normal", { bg = "NONE" })
    vim.api.nvim_set_hl(0, "NormalNC", { bg = "NONE" })
  end,
  group = custom_highlight,
})

