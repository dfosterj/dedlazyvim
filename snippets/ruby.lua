local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
  -- sb snippet
  s("sb", {
    t({"#!/usr/bin/env ruby", ""})
  }),

  -- it snippet
  s("it", {
    t("it { is_expected.to "), i(1), t("('$2') },")
  }),

  -- ptf snippet
  s("ptf", {
    t("it { is_expected.to contain_file('$1')"),
    t({"", "  .with(", ""}),
    t({"    path:  '$2',", "    ensure:  'present',", "    replace:  true,", "    owner:  '$3',", "    group:  '$4',", "    mode:  '$5',", "    source:  'puppet:///modules/$6',", "  )"}),
    t("}\n")
  }),

  -- pte snippet
  s("pte", {
    t("it { is_expected.to contain_exec('$1')"),
    t({"", "  .with(", ""}),
    t({"    command: '$2',", "    subscribe: '$3',", "    require: [", "      $4", "    ]", "  )"}),
    t("}\n")
  }),

  -- ptp snippet
  s("ptp", {
    t("describe 'install check' do"),
    t({"", "  it { is_expected.to contain_package('${VISUAL}').with(ensure: 'present') }", "end", ""}),
    t({"", "describe 'service check' do", ""}),
    t({"  it { is_expected.to contain_service('${VISUAL}')", "    .with(", "      ensure: 'running',", "      enable: true,", "      provider: 'systemd',", "    )", "  }", "end"}),
  }),

  -- pth snippet
  s("pth", {
    t("context 'RedHat' do"),
    t({"", "  let(:facts) { {", "    :osfamily => 'RedHat',", "    :architecture => 'x86_64',", "  } }", ""}),
    t({"", "  it { is_expected.to compile }", "end", ""}),
  }),
}

