return {
  "L3MON4D3/LuaSnip",
  dependencies = {
    "rafamadriz/friendly-snippets",
  },
  config = function()
    local luasnip = require("luasnip")

    -- Set the directory for custom snippets
    local snippets_dir = vim.fn.stdpath("config") .. "/snippets"

    -- Load custom snippets from the directory
    require("luasnip.loaders.from_lua").lazy_load({ paths = { snippets_dir } })

    -- Load VSCode-style snippets
    require("luasnip.loaders.from_vscode").lazy_load()

    -- Enable filetype-specific snippets
    luasnip.filetype_extend("bash", { "sh" })
    luasnip.filetype_extend("ruby", { "rb" })
    luasnip.filetype_extend("python", { "py" })
    luasnip.filetype_extend("csharp", { "cs" })
    luasnip.filetype_extend("cpp", { "c" })
    luasnip.filetype_extend("rust", { "rs" })
    luasnip.filetype_extend("gdscript", { "gd" })
    luasnip.filetype_extend("puppet", { "pp" })
    luasnip.filetype_extend("terraform", { "tf" })

    -- Keybinding to open the LuaSnip snippets directory
    vim.api.nvim_set_keymap(
      "n",
      "<Leader>le",
      ":e " .. snippets_dir .. "<CR>",
      { noremap = true, silent = true, desc = "Edit LuaSnip snippets" }
    )

    print("LuaSnip configured with custom snippets from " .. snippets_dir)
  end,
}

