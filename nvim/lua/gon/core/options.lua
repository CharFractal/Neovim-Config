--  OPTIONS

local opt = vim.opt

--  line numbers
opt.number          = true

--  tabs && indentation
opt.tabstop         = 2
opt.softtabstop     = 2
opt.shiftwidth      = 2
opt.expandtab       = true
opt.smartindent     = true

--  line wrapping
opt.wrap            = true

--  search settings
opt.ignorecase      = true
opt.smartcase       = true

--  cursorline
opt.cursorline      = true

--  appearance
opt.termguicolors   = true
opt.background      = "dark"
opt.signcolumn      = "no"

--  backspace
opt.backspace       = "indent,eol,start"

--  clipboard
opt.clipboard       = "unnamedplus"

--  split windows
opt.splitright      = true
opt.splitbelow      = true

--  misc
--opt.iskeyword:append("-")
