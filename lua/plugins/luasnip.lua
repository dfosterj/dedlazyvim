return {
  -- Disable LuaSnip if using UltiSnips
  -- { "L3MON4D3/LuaSnip", enabled = false },
  -- Enable UltiSnips and configure the snippet directory
  {
    "SirVer/ultisnips",
    init = function()
      vim.g.UltiSnipsSnippetDirectories = { "~/.config/nvim/UltiSnips" }
    end,
  },

  -- Integrate UltiSnips with nvim-cmp
  { "quangnguyen30192/cmp-nvim-ultisnips" },

  -- nvim-cmp setup
  {
    "hrsh7th/nvim-cmp",
    version = false,  -- Use latest version, avoid outdated one
    event = "InsertEnter",  -- Load on InsertEnter event
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",    -- LSP source for completions
      "hrsh7th/cmp-buffer",      -- Buffer source for completions
      "hrsh7th/cmp-path",        -- Path source for completions
      "quangnguyen30192/cmp-nvim-ultisnips",  -- Integrate UltiSnips with nvim-cmp
      "saadparwaiz1/cmp_luasnip",  -- LuaSnip integration (you can switch to this if needed)
    },
    config = function()
      local cmp = require('cmp')
      local defaults = require('cmp.config.default')()

      -- nvim-cmp configuration
      cmp.setup({
        completion = {
          completeopt = "menu,menuone,noinsert",  -- Controls the completion menu
        },
        snippet = {
          expand = function(args)
            -- Use UltiSnips for snippet expansion
            vim.fn["UltiSnips#Anon"](args.body)
            -- For LuaSnip, use: require("luasnip").lsp_expand(args.body)
          end,
        },
        mapping = cmp.mapping.preset.insert({
          ["<C-n>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
          ["<C-p>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
          ["<C-b>"] = cmp.mapping.scroll_docs(-4),
          ["<C-f>"] = cmp.mapping.scroll_docs(4),
          ["<C-Space>"] = cmp.mapping.complete(),
          ["<C-e>"] = cmp.mapping.abort(),
          ["<CR>"] = cmp.mapping.confirm({ select = true }),
          ["<S-CR>"] = cmp.mapping.confirm({
            behavior = cmp.ConfirmBehavior.Replace,
            select = true,
          }),
        }),
        sources = cmp.config.sources({
          { name = "nvim_lsp" },
          { name = "ultisnips" },
          { name = "buffer" },
          { name = "path" },
        }),
        formatting = {
          format = function(_, item)
            local icons = require("lazyvim.config").icons.kinds
            if icons[item.kind] then
              item.kind = icons[item.kind] .. item.kind
            end
            return item
          end,
        },
        experimental = {
          ghost_text = {
            hl_group = "CmpGhostText",  -- Set highlight group for ghost text
          },
        },
        sorting = defaults.sorting,
      })
    end,
  },
}

