local lspconfig_status, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status then
  return
end

local cmp_nvim_lsp_status, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if not cmp_nvim_lsp_status then
  return
end

local capabilities = cmp_nvim_lsp.default_capabilities()

local signs = { Error = " ", Warn = " ", Hint = "󰠠 ", Info = " " }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end

vim.lsp.set_log_level("debug")

local keymap = vim.keymap
-- Global mappings.
keymap.set('n', '<space>e', vim.diagnostic.open_float)
keymap.set('n', '[d', vim.diagnostic.goto_prev)
keymap.set('n', ']d', vim.diagnostic.goto_next)
keymap.set('n', '<space>q', vim.diagnostic.setloclist)

vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'
    local opts = { buffer = ev.buf, silent = true }

    opts.desc = "Show LSP references"
    keymap.set("n", "gR", "<cmd>Telescope lsp_references<CR>", opts)

    opts.desc = "Go to declaration"
    keymap.set("n", "gD", vim.lsp.buf.declaration, opts)

    opts.desc = "Show LSP definitions"
    keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<CR>", opts)

    opts.desc = "Show documentation"
    keymap.set("n", "K", vim.lsp.buf.hover, opts)

    opts.desc = "Show LSP implementations"
    keymap.set("n", "gi", "<cmd>Telescope lsp_implementations<CR>", opts)

    opts.desc = "Signature help"
    keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)

    opts.desc = "Type definition"
    keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)

    opts.desc = "Rename"
    keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)

    opts.desc = "Code actions"
    keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)

    opts.desc = "References"
    keymap.set('n', 'gr', vim.lsp.buf.references, opts)

    opts.desc = "Format buffer"
    keymap.set('n', '<space>f', function()
      vim.lsp.buf.format { async = true }
    end, opts)
  end,
})

lspconfig.clangd.setup({
  capabilities = capabilities,
  cmd = {
    "clangd",
    "--background-index",
    "--suggest-missing-includes",
    "--clang-tidy",
    "--compile-commands-dir=build",
    "--header-insertion=iwyu"
  },
  root_dir = lspconfig.util.root_pattern(".clangd", "compile_commands.json", ".git", "build"),
  on_attach = function(client, bufnr)
    -- Custom on_attach function
    -- Enable Clangd extensions only when Clangd is attached to a buffer
    require("clangd_extensions").setup({
      inlay_hints = {
        inline = vim.fn.has("nvim-0.10") == 1,
        only_current_line = false,
        only_current_line_autocmd = { "CursorHold" },
        show_parameter_hints = true,
        parameter_hints_prefix = "<- ",
        other_hints_prefix = "=> ",
        max_len_align = false,
        max_len_align_padding = 1,
        right_align = false,
        right_align_padding = 7,
        highlight = "Comment",
        priority = 100,
      },
      ast = {
        role_icons = {
          type = "🄣",
          declaration = "🄓",
          expression = "🄔",
          statement = ";",
          specifier = "🄢",
          ["template argument"] = "🆃",
        },
        kind_icons = {
          Compound = "🄲",
          Recovery = "🅁",
          TranslationUnit = "🅄",
          PackExpansion = "🄿",
          TemplateTypeParm = "🅃",
          TemplateTemplateParm = "🅃",
          TemplateParamObject = "🅃",
        },
        highlights = {
          detail = "Comment",
        },
      },
      memory_usage = {
        border = "none",
      },
      symbol_info = {
        border = "none",
      },
    })
  end,
})


lspconfig.html.setup({ capabilities = capabilities })
lspconfig.tsserver.setup({ capabilities = capabilities })
lspconfig.cssls.setup({ capabilities = capabilities })
lspconfig.lua_ls.setup({
  capabilities = capabilities,
  settings = { Lua = { diagnostics = { globals = { "vim" } }, completion = { callSnippet = "Replace" } } },
})
lspconfig.hls.setup({ capabilities = capabilities })
lspconfig.bashls.setup({ capabilities = capabilities })

