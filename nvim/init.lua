--  PLUGINS
require("gon.plugins-setup")

--  CORE_CONFIG
require("gon.core.keymaps")
require("gon.core.colorscheme")
require("gon.core.options")

--  PLUGINS_CONFIG
require("gon.plugins.comment")
require("gon.plugins.nvim-tree")
require("gon.plugins.lualine")
require("gon.plugins.telescope")
require("gon.plugins.nvim-cmp")
require("gon.plugins.treesitter")

--  LSP_CONFIG
require("gon.plugins.lsp.mason")
require("gon.plugins.lsp.lspconfig")

