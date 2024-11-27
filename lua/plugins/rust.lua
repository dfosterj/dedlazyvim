-- init.lua or a Lua configuration file

-- Import and setup the lspconfig module
local lspconfig = require('lspconfig')

-- Configure Rust Analyzer
lspconfig.rust_analyzer.setup({
  settings = {
    ["rust-analyzer"] = {
      diagnostic = {
        refreshSupport = false,  -- Set this option to disable auto-refresh of diagnostics
      },
    },
  },
})

