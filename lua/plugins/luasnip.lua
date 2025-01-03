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

    -- vim.keymap.set(
    --   "n",
    --   ",se",
    --   function()
    --     local ext = vim.fn.expand("%:e") -- Get the file extension
    --     local snippets_dir = "~/.config/nvim/snippets/" -- Replace with your snippets directory
    --     local snippet_file = snippets_dir .. ext .. ".lua"
    --     vim.cmd("e " .. snippet_file) -- Open the corresponding Lua snippet file
    --   end,
    --   { noremap = true, silent = true, desc = "Edit LuaSnip snippets for file type" }
    -- )

    -- vim.api.nvim_set_keymap(
    --   "n",
    --   ",se",
    --   [[:lua local ext = vim.fn.expand("%:e"); local snippets_dir = "/path/to/snippets/"; vim.cmd("e " .. snippets_dir .. ext .. ".lua")<CR>]],
    --   { noremap = true, silent = true, desc = "Edit LuaSnip snippets for file type" }
    -- )

	vim.keymap.set(
	  "n",
	  ",se",
	  function()
	    local ext = vim.fn.expand("%:e") -- Get the file extension
	    local home_dir = vim.fn.expand("~")  -- Get the user's home directory
	    local snippets_dir = home_dir .. "/.config/nvim/snippets/"  -- Construct the path to the snippets directory
	    local snippet_file = snippets_dir .. ext .. ".lua"  -- Define the corresponding Lua snippet file path
	    -- Check if the snippet file exists before opening it
	    if vim.fn.filereadable(snippet_file) == 1 then
	      vim.cmd("e " .. snippet_file) -- Open the corresponding Lua snippet file
	    else
	      print("Snippet file not found: " .. snippet_file)  -- Print an error if the file doesn't exist
	    end
	  end,
	  { noremap = true, silent = true, desc = "Edit LuaSnip snippets for file type" }
	)

    print("LuaSnip configured with custom snippets from " .. snippets_dir)
  end,
}

