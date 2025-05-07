-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("toggleterm").setup({
  -- shell = vim.fn.executable("zsh") and "zsh" or vim.o.shell,
})

-- local gdproject = io.open(vim.fn.getcwd()..'/project.godot', 'r')
-- if gdproject then
--   io.close(gdproject)
--   vim.fn.serverstart '/tmp/godot.pipe'
-- end

local nvim_lsp = require('lspconfig')

-- possible addon later
-- require('obsidian').setup({
--     ui = { enable = false },
-- }) 
