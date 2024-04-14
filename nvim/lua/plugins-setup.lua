local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  -- Colorscheme does not require lazy loading
  {
    "bluz71/vim-moonfly-colors",
    name = "moonfly",
    lazy = false,
    priority = 1000
  },
  -- Maximizer can be loaded on demand when a specific command is used
  {
    "szw/vim-maximizer",
    name = "vim-maximizer",
    cmd = "MaximizerToggle"
  },
  -- Commenting plugin can be loaded on demand
  {
    "numToStr/Comment.nvim",
    name = "Comment.nvim",
    keys = { "gc", "gb" }
  },
  -- Plenary is a dependency for several plugins, so load it early but lazily
  {
    "nvim-lua/plenary.nvim",
    name = "plenary lib",
  },
  -- File explorer loaded on demand
  {
    "nvim-tree/nvim-tree.lua",
    name = "file explorer",
    cmd = { "NvimTreeToggle", "NvimTreeFocus" },
    requires = "nvim-tree/nvim-web-devicons"
  },
  -- Status line plugin loaded after the UI is ready
  {
    "nvim-lualine/lualine.nvim",
    name = "lualine",
    event = "VimEnter"
  },
  -- Fuzzy finder loaded on demand
  {
    "nvim-telescope/telescope-fzf-native.nvim",
    name = "fuzzy finder",
    run = "make",
    cmd = "Telescope"
  },
  {
    "nvim-telescope/telescope.nvim",
    name = "telescope",
    cmd = "Telescope",
    requires = "nvim-lua/plenary.nvim"
  },
  -- Completion plugins are generally needed during Insert mode
  {
    "hrsh7th/nvim-cmp",
    name = "nvim-cmp",
    event = "InsertEnter"
  },
  {
    "hrsh7th/cmp-buffer",
    name = "cmp-buffer",
    after = "nvim-cmp"
  },
  {
    "hrsh7th/cmp-path",
    name = "cmp-paths",
    after = "nvim-cmp"
  },
  -- Snippet engine and completion plugin
  {
    "L3MON4D3/LuaSnip",
    name = "luasnip",
    after = "nvim-cmp"
  },
  {
    "saadparwaiz1/cmp_luasnip",
    name = "cmp-luasnip",
    after = "nvim-cmp"
  },
  {
    "rafamadriz/friendly-snippets",
    name = "friendly-snippets",
    after = "nvim-cmp"
  },
  -- LSP and tools
  {
    "williamboman/mason.nvim",
    name = "mason",
    cmd = "Mason"
  },
  {
    "williamboman/mason-lspconfig.nvim",
    name = "mason-lspconfig",
    after = "mason.nvim"
  },
  {
    "neovim/nvim-lspconfig",
    name = "lspconfig",
    after = "mason-lspconfig"
  },
  {
    "p00f/clangd_extensions.nvim",
    name  = "clangd_extesions",
    after = "lspconfig",
  },
  {
    "hrsh7th/cmp-nvim-lsp",
    name = "cmp-nvim-lsp",
    after = "nvim-lspconfig"
  },
  -- Treesitter with deferred loading
  {
    "nvim-treesitter/nvim-treesitter",
    name = "nvim-treesitter",
    event = "BufRead",
    run = ":TSUpdate"
  },
  -- Start screen
  {
    "goolord/alpha-nvim",
    name = "greeting screen",
    event = "VimEnter"
  },
  -- Session management
  {
    "rmagatti/auto-session",
    name = "auto-session",
    cmd = "RestoreSession"
  },
  {
    "akinsho/bufferline.nvim",
    name = "bufferline",
    event = "VimEnter",
    requires = "nvim-tree/nvim-web-devicons"
  },
  -- UI enhancer for input dialogs
  {
    "stevearc/dressing.nvim",
    name = "dressing",
    event = "VimEnter"
  },
  -- Autopairs loaded on Insert mode
  {
    "windwp/nvim-autopairs",
    name = "nvim-autopairs",
    event = "InsertEnter"
  },
})

