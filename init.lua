-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("toggleterm").setup()

local gdproject = io.open(vim.fn.getcwd()..'/project.godot', 'r')
if gdproject then
  io.close(gdproject)
  vim.fn.serverstart '/tmp/godot.pipe'
end

local nvim_lsp = require('lspconfig')
