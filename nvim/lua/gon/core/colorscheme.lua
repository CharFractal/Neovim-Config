--  COLORSCHEME

local status, _ = pcall(vim.cmd , "colorscheme moonfly")
if  not status  then
	print("Colorscheme moonfly not found")
	return
end

