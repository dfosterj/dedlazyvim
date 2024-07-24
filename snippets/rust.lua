local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
  -- fn snippet
  s("fn", {
    t({"fn ", ""}), i(1), t({"()", "{"}), i(2), t({"", "}"}),
  }),

  -- cfp snippet
  s("cfp", {
    t({"#[cfg(feature = \"parser\")]"})
  }),

  -- t snippet
  s("t", {
    t({"#[test]"})
  }),

  -- region snippet
  s("region", {
    t({"// region: ---- ", ""}), i(1), t({"", ""}),
    i(2), t({"", "// end region: --- "}), i(1),
  }),
}

