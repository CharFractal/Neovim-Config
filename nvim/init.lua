--  PLUGINS
require("plugins-setup")

--  CORE_CONFIG
require("core.keymaps")
require("core.colorscheme")
require("core.options")

--  PLUGINS_CONFIG
require("plugins.comment")
require("plugins.nvim-tree")
require("plugins.lualine")
require("plugins.telescope")
require("plugins.nvim-cmp")
require("plugins.treesitter")
require("plugins.alpha")
require("plugins.auto-sessions")
require("plugins.bufferline")
require("plugins.autopairs")

--  LSP_CONFIG
require("plugins.lsp.mason")
require("plugins.lsp.lspconfig")

