local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  {
    "bluz71/vim-moonfly-colors",
    name      = "moonfly",
    lazy      = false,
    priority  = 1000
  },
  {
    "szw/vim-maximizer",
    name      = "vim-maximizer",
    lazy      = false
  },
  {
    "numToStr/Comment.nvim",
    name      = "Comment.nvim",
    lazy      = false
  },
  {
    "nvim-lua/plenary.nvim",
    name      = "plenary lib",
    lazy      = false
  },
  {
    "nvim-tree/nvim-tree.lua",
    name      = "file explorer",
    lazy      = false
  },
  {
    "nvim-tree/nvim-web-devicons",
    name      = "web-devicons",
    lazy      = false
  },
  {
    "nvim-lualine/lualine.nvim",
    name      = "lualine",
    lazy      = false,
    dependencies = { 'nvim-tree/nvim-web-devicons' }
  },
  {
    "nvim-telescope/telescope-fzf-native.nvim",
    name      = "fuzzy finder",
    lazy      = false,
    run       = "make",
  },
  {
    "nvim-telescope/telescope.nvim",
    name      = "telescope",
    lazy      = false,
    tag       = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },
  {
    "hrsh7th/nvim-cmp",                             --completion
    name      = "nvim-cmp",                        
    lazy      = false,
  },
  {
    "hrsh7th/cmp-buffer",                           --text  into  buffer
    name      = "cmp-buffer",                      
    lazy      = false,                             
  },
  {
    "hrsh7th/cmp-path",                             --paths into  buffer
    name      = "cmp-paths",                       
    lazy      = false,
  },
  {
    "L3MON4D3/LuaSnip",                             --snippet engine
    name      = "luasnip",
    lazy      = false,
  },
  {
    "saadparwaiz1/cmp_luasnip",                     --autocompletion
    name      = "cmp-luasnip",
    lazy      = false,
  },
  {
    "rafamadriz/friendly-snippets",                 --useful snippets
    lazy      = false,
  },
  {
    "williamboman/mason.nvim",                      --MASON
    lazy      = false,
  },
  {
    "williamboman/mason-lspconfig.nvim",            --MASON x LSPCONFIG
    lazy      = false,
  },
  {
    "neovim/nvim-lspconfig",                        --LSPCONFIG
    lazy      = false,
  },
  {
    "hrsh7th/cmp-nvim-lsp",                         --lsp completion
    lazy      = false,
  },
  {
    "nvim-treesitter/nvim-treesitter",              --TREESITTER
    lazy      = false,
    build     = ":TSUpdate"
  },
})
