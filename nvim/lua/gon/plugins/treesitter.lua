local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
  return
end

-- configure treesitter
treesitter.setup({
  highlight = {
    enable = true,
  },
  indent = { enable = true },
  autotag = { enable = true },
  ensure_installed = {
    "c",
    "cpp",
    "haskell",
    "asm",
    "glsl",
    "hlsl",
    "bash",
    "vim",
  },
  -- auto install above language parsers
  auto_install = true,
})
