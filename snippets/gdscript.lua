local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
  -- Variable snippet
  s("var", {
    t("var "), i(1), t(" = "), i(2),
  }),

  -- Function snippet
  s("fun", {
    t("func "), i(1), t("("), i(2), t(")"), i(3), t(":"),
    t({"", "\t"}), i(4),
    t({"", "\t#end"}),
    t({"", "#end"}),
  }),

  -- Comment section 1
  s("cs1", {
    t("################################################################################"),
    t({"", "# "}), i(1),
    t({"", "################################################################################"}),
  }),

  -- Comment section 2
  s("cs2", {
    t("#---------------------------------------- "),
    t({"", "# "}), i(1),
    t({"", "#---------------------------------------- "}),
  }),

  -- End comment snippet
  s("ee", {
    t("\t#end"),
    t({"", "#end"}),
  }),
}
