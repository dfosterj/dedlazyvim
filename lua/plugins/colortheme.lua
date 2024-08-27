return {
  { "ellisonleao/gruvbox.nvim" },
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  { "rebelot/kanagawa.nvim" },
  { "sho-87/kanagawa-paper.nvim" },
  { "scottmckendry/cyberdream.nvim", lazy = false, priority = 1000 },
  { 'kepano/flexoki-neovim', name = 'flexoki' },
  { "navarasu/onedark.nvim"},
  { "xero/miasma.nvim", lazy = false, priority = 1000 },
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  { "blazkowolf/gruber-darker.nvim"},
  { "Mofiqul/dracula.nvim" },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "cyberdream",
    },
  },
}

-- example bg overwrite
-- {
--     "Mofiqul/dracula.nvim",
--     config = function()
--         require('dracula').setup({
--                 -- You can set any specific options for the Dracula theme here
--             })
--         -- Set the colorscheme
--         vim.cmd("colorscheme dracula")

--         -- Override the background color
--         vim.api.nvim_set_hl(0, "Normal", { bg = "#141414" })
--         vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#141414" })
--     end,
-- },
