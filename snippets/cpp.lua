local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
  -- Standard namespace snippets
  s("s", { t("std::") }),
  s("so", { t("std::cout") }),
  s("se", { t("std::cerr") }),
  s("el", { t("std::endl;"), i(1) }),
  s("ss", { t("std::string") }),
  s("ssp", { t("std::shared_ptr<"), i(1), t(">") }),

  -- Stream operator snippet
  s("pi", { t("<< ") }),

  -- Class definition snippet
  s("cl", {
    t("class "), i(1), t({"", "{"}),
    t({"", "\t"}), i(2),
    t({"", "};"}),
  }),

  -- Main function snippet
  s("im", {
    t("int main(int argc, char * argv[])"),
    t({"", "{"}),
    t({"", "\t"}), i(1),
    t({"", "return 0;"}),
    t({"", "}"}),
  }),

  -- Block snippet
  s("b", {
    t("{"),
    t({"", "\t"}), i(1),
    t({"", "}"}),
  }),

  -- Header guard snippet
  s("head", {
    t("#ifndef "), i(1),
    t({"", "#define "}), i(2),
    t({"", "", "#endif"}),
  }),

  -- Comment block snippet
  s("cb", {
    t("////////////////////////////////////////////////////////////////////////////////"),
    t({"", "// "}), i(1),
    t({"", "////////////////////////////////////////////////////////////////////////////////"}),
  }),
}

