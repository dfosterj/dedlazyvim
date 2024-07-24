local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
  -- File resource snippet
  s("pf", {
    t("file { '"), i(1), t("':"),
    t({"", "\tpath => '"}), i(2), t("',"),
    t({"", "\tensure => 'present',"}),
    t({"", "\treplace => true,"}),
    t({"", "\towner => '"}), i(3), t("',"),
    t({"", "\tgroup => '"}), i(4), t("',"),
    t({"", "\tmode => '"}), i(5), t("',"),
    t({"", "\tsource => 'puppet:///modules/"}), i(6), t("',"),
    t({"", "}"}),
  }),

  -- Exec resource snippet
  s("pe", {
    t("exec { '"), i(1), t("':"),
    t({"", "\tcommand   => '"}), i(2), t("',"}),
    t({"", "\tsubscribe => "}), i(3), t("["), i(4), t("],"),
    t({"", "\trequire   =>  ["}), i(5), t({"", "\t]"}),
    t({"", "}"}),
  }),

  -- Package and Service snippet
  s("pp", {
    t("package { '${VISUAL}': ensure => present,"),
    t({"", "\t}"}),
    t({"", ""}),
    t("service { '${VISUAL}':"),
    t({"", "\tensure => running,"}),
    t({"", "\tenable => true,"}),
    t({"", "\tprovider => systemd,"}),
    t({"", "\t}"}),
  }),
}

