local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node

return {
  -- Check root user snippet
  s("ruc", {
    t({
      "#check root user",
      "if [ \"$(id -u)\" != \"0\" ]; then",
      "  echo \"You should be root to run this script\";",
      "  exit;",
      "fi",
    }),
  }),
  -- Shebang snippet
  s("sb", {
    t("#!/bin/bash"),
  }),
}

