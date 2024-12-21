local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
  -- Shebang for Python3
  s("sb", {
    t("#!/usr/bin/env python3"),
  }),

  -- Multi-line string snippet
  s("ds", {
    t('"""'),
    i(1),
    t('"""'),
  }),

  -- Print statement snippet
  s("pp", {
    t("print("), i(1), t(")"),
  }),
}

