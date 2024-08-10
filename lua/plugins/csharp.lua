return {
  {
    "iabdelkareem/csharp.nvim",
    config = function()
      require("csharp").setup({
        -- Default configuration values
        enable_lsp = true,  -- Enable LSP support for C#
        lsp_cmd = vim.fn.getcwd() .. "/.lsp/csharp/Microsoft.CodeAnalysis.LanguageServer", -- Use local installation
        omnisharp_bin = nil, -- Path to omnisharp binary, leave as nil to use system default
        use_tabnine = false, -- Whether to use Tabnine with LSP
        enable_semantic_tokens = true, -- Enable semantic token highlights
        enable_diagnostics = true, -- Enable LSP diagnostics
        root_dir = function(fname)
          return require("lspconfig.util").root_pattern("*.csproj")(fname) or require("lspconfig.util").root_pattern(".git")(fname)
        end,
        enable_code_actions = true, -- Enable LSP code actions
        code_action_lightbulb = { enable = true }, -- Enable lightbulb for code actions
        enable_formatter = true, -- Enable LSP formatter
        format_on_save = false, -- Format files on save
        enable_snippets = true, -- Enable snippets support
        enable_test_runner = false, -- Enable test runner
        enable_mappings = true, -- Enable default key mappings
      })
    end,
  },
}

