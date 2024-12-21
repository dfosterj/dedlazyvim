local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
  -- fw snippet
  s("fw", {
    t('<?xml version="1.0" encoding="utf-8"?>\n<zone>\n'),
    t("    <short>buildfw</short>\n"),
    t("    <description>Build Server Firewall</description>\n"),
    t("    <service name=\"ssh\"/>\n"),
    t("    <service name=\"dhcpv6-client\"/>\n"),
    t("</zone>\n"),
  }),

  -- f1 snippet
  s("f1", {
    t("<port protocol=\""), i(1), t("\" port=\""),
  }),

  -- f2 snippet
  s("f2", {
    t("\"/>"),
  }),

  -- rr snippet
  s("rr", {
    t('<rule family="ipv4">\n'),
    t('    <source address="${VISUAL}"/>\n'),
    t('    <accept/>\n'),
    t('</rule>\n'),
  }),
}

