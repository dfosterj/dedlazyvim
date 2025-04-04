return {
  {
    "razzmatazz/csharp-language-server",

    config = function()
      -- You can customize the command here to point to your local installation
      local cmd = {
        "dotnet",
        "/home/ded/.config/nvim/.lib/OmniSharp.Extensions.LanguageServer.dll",
      }

      require('lspconfig').csharp_ls.setup({
        cmd = cmd,
        -- Optional: Add additional configuration options here
        filetypes = { "cs", "csx" },
        root_dir = require('lspconfig.util').root_pattern('.git', '*.sln'),
        settings = {
          csharp = {
            -- Add any server-specific settings here
          },
        },
        on_attach = function(client, bufnr)
          -- Optional: Add your on_attach function here
        end,
      })
    end,
  }
}

