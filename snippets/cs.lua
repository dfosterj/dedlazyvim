local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
  -- PhysicsProcess override snippet
  s("povpp", {
    t("public override void _PhysicsProcess(double delta)"),
    t({"", "{"}),
    t({"", "\t"}), i(1),
    t({"", "}"}),
  }),

  -- General override method snippet
  s("pov", {
    t("public override void "), i(1), t("("), i(2), t(")"),
    t({"", "{"}),
    t({"", "\t"}), i(3),
    t({"", "}"}),
  }),

  -- If statement snippet
  s("iff", {
    t("if ("), i(1), t(") "),
    i(2), t({"", "\t"}), i(3),
  }),

  -- Get/Private Set property snippet
  s("gps", {
    t("{ get; private set; }"),
  }),

  -- Export attribute snippet
  s("xp", {
    t("[Export]"),
  }),
}

