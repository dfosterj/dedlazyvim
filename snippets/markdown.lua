local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
  -- Header 1 snippet
  s("h", {
    t("# "),
    i(1),
  }),

  -- Header 2 snippet
  s("h2", {
    t("## "),
    i(1),
  }),

  -- Bash code block snippet
  s("b", {
    t("```bash"),
    t({"", "\t"}), i(1),
    t({"", "```"}),
    t({"", ""}), i(2),
  }),
}

