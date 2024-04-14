local autopairs_status, autopairs = pcall(require, "nvim-autopairs")
if not autopairs_status then return end

local cmp_autopairs = require('nvim-autopairs.completion.cmp')
local cmp_status, cmp = pcall(require, 'cmp')
if cmp_status then
  cmp.event:on(
    'confirm_done',
    cmp_autopairs.on_confirm_done({ map_char = { tex = '' } })
  )
end

autopairs.setup({
  check_ts = true,
  ts_config = {
    c = {'string', 'comment'},
    cpp = {'string', 'comment'},
    haskell = {'string', 'comment'},
    cuda = {'string', 'comment'},
    bash = {'string', 'comment'},
  },
  disable_filetype = { "TelescopePrompt", "vim" },
})

-- Advanced Rules
local Rule = require('nvim-autopairs.rule')
local ts_conds = require('nvim-autopairs.ts-conds')

-- Generic rules for programming languages
autopairs.add_rules({
  Rule("%", "%", {"c", "cpp", "cuda"})
    :with_pair(ts_conds.is_not_ts_node({'function', 'function_call'})),
  Rule("$", "$", {"bash", "haskell"})
    :with_pair(ts_conds.is_not_ts_node({'function', 'function_call'})),
  Rule("/*", "*/", {"c", "cpp", "cuda"})
    :with_pair(ts_conds.is_not_ts_node({'string'})),
  Rule("`", "`", "bash")
    :with_pair(ts_conds.is_not_ts_node({'command'}))
})

-- Specific rules for Haskell
autopairs.add_rules({
  Rule("{-", "-}", "haskell")
    :with_pair(ts_conds.is_not_ts_node({'string', 'comment'})),
  Rule("{", "}", "haskell")
    :with_pair(ts_conds.is_not_ts_node({'string', 'comment'}))
})

