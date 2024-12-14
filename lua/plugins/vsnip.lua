-- -- File: lua/plugins/vim-vsnip.lua

-- return {
--   "hrsh7th/vim-vsnip",
--   event = "InsertEnter",
--   config = function()
--     -- Set up some basic settings for vim-vsnip
--     vim.g.vsnip_snippet_dir = vim.fn.stdpath("config") .. "/snippets"

--     -- Key mappings for snippet expansion and navigation
--     vim.api.nvim_set_keymap("i", "<C-j>", "<Plug>(vsnip-expand-or-jump)", { silent = true })
--     vim.api.nvim_set_keymap("s", "<C-j>", "<Plug>(vsnip-expand-or-jump)", { silent = true })
--     vim.api.nvim_set_keymap("i", "<C-k>", "<Plug>(vsnip-jump-prev)", { silent = true })
--     vim.api.nvim_set_keymap("s", "<C-k>", "<Plug>(vsnip-jump-prev)", { silent = true })

--     -- Key mappings for selecting or jumping into placeholders
--     vim.api.nvim_set_keymap("i", "<Tab>", "vsnip#available(1) ? '<Plug>(vsnip-expand-or-jump)' : '<Tab>'", { expr = true, noremap = true })
--     vim.api.nvim_set_keymap("s", "<Tab>", "vsnip#available(1) ? '<Plug>(vsnip-expand-or-jump)' : '<Tab>'", { expr = true, noremap = true })
--     vim.api.nvim_set_keymap("i", "<S-Tab>", "vsnip#jumpable(-1) ? '<Plug>(vsnip-jump-prev)' : '<S-Tab>'", { expr = true, noremap = true })
--     vim.api.nvim_set_keymap("s", "<S-Tab>", "vsnip#jumpable(-1) ? '<Plug>(vsnip-jump-prev)' : '<S-Tab>'", { expr = true, noremap = true })

--     -- Configure snippet sources for completion
--     vim.cmd([[
--       let g:vsnip_filetypes = {}
--       let g:vsnip_filetypes.javascript = ['javascript', 'html']
--       let g:vsnip_filetypes.typescript = ['typescript', 'javascript']
--       let g:vsnip_filetypes.bash = ['sh']
--       let g:vsnip_filetypes.sh = ['bash']
--       let g:vsnip_filetypes.ruby = ['ruby']
--       let g:vsnip_filetypes.rust = ['rust']
--       let g:vsnip_filetypes.python = ['python']
--       let g:vsnip_filetypes.csharp = ['csharp']
--       let g:vsnip_filetypes.cpp = ['cpp']
--       let g:vsnip_filetypes.html = ['html']
--       let g:vsnip_filetypes.css = ['css']
--       let g:vsnip_filetypes.packer = ['packer']
--       let g:vsnip_filetypes.terraform = ['terraform']
--       let g:vsnip_filetypes.puppet = ['puppet']
--     ]])
--   end,
-- }

