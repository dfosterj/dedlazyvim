local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node

return {
  -- HTML structure snippet 1
  s("bh", {
    t("<div class=\"row\">"),
    t({"", "\t<div class=\"col-sm-12\">"}),
    t({"", "\t\t<div class=\"panel panel-default\">"}),
    t({"", "\t\t\t<div class=\"panel-heading\">"}),
  }),

  -- HTML structure snippet 2
  s("th", {
    t("<div class='container'>"),
    t({"", "\t<div class='form-horizontal'>"}),
  }),

  -- Closing div snippet
  s("dc", {
    t("</div>"),
  }),

  -- Open div snippet
  s("do", {
    t("<div>"),
  }),

  -- Button class snippet 1
  s("db", {
    t("class: 'btn btn-default'"),
  }),

  -- Button class snippet 2
  s("dbs", {
    t("class: 'btn btn-default btn-xs'"),
  }),

  -- Primary button class snippet
  s("plb", {
    t("class: 'btn btn-primary btn-lg', style: 'color:white', target: :_blank"),
  }),

  -- Data table structure snippet
  s("dt", {
    t("<div class=\"tab-content tab-content-margin-20px\" style=\"overflow: hidden;\">"),
    t({"", "\t<div id=\"CHANGEME_datatable\" class=\"tab-pane fade in active\" style=\"\">"}),
    t({"", "\t\t<table id=\"CHANGEME_table\" class=\"table table-striped table-bordered table-responsive\" data-source=\"<%= CHANGEME_url(format: \"json\") %>\" cellspacing=\"0\" width=\"100%\" style=\"table-layout: fixed;word-wrap:break-word;\">"}),
    t({"", "\t\t\t<thead>"}),
    t({"", "\t\t\t\t<tr class=\"table_filters\">"}),
    t({"", "\t\t\t\t\t<th>Name</th>"}),
    t({"", "\t\t\t\t\t<th class=\"center\" ><span id=\"CHANGEME_table_clear\" class=\"btn btn-danger\" >Clear Filter</span></th>"}),
    t({"", "\t\t\t\t</tr>"}),
    t({"", "\t\t\t\t<tr class=\"table_heading\">"}),
    t({"", "\t\t\t\t\t<th>Name</th>"}),
    t({"", "\t\t\t\t\t<th></th>"}),
    t({"", "\t\t\t\t</tr>"}),
    t({"", "\t\t\t</thead>"}),
    t({"", "\t\t\t<tbody></tbody>"}),
    t({"", "\t\t</table>"}),
    t({"", "\t</div>"}),
    t({"", "</div>"}),
  }),
}

