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
  { "AlexvZyl/nordic.nvim" },

  -- {
  --   "LazyVim/LazyVim",
  --   opts = {
  --     colorscheme = "cyberdream",
  --   },
  -- },

-- override bg
{
    "Mofiqul/dracula.nvim",
    config = function()
        require('nordic').setup({
                -- You can set any specific options for the nordic theme here
            })
        -- Set the colorscheme
        vim.cmd("colorscheme nordic")

        -- Override the background color
        vim.api.nvim_set_hl(0, "Normal", { bg = "#141414" })
        vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#141414" })
		-- Set the background color for the NeoTree window
        vim.api.nvim_set_hl(0, "NeoTreeNormal", { bg = "#141414" })
        vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { bg = "#141414" })
		-- Set the color for file names in NeoTree
	    vim.api.nvim_set_hl(0, "NeoTreeFileName", { fg = "#ffffff" })
	    -- Set the color for directory names in NeoTree
	    vim.api.nvim_set_hl(0, "NeoTreeDirectoryName", { fg = "#5e81ac" })
	    -- Set the color for indentation markers in NeoTree
	    vim.api.nvim_set_hl(0, "NeoTreeIndentMarker", { fg = "#44475a" })
	    -- Set the color for added, modified, and deleted Git files in NeoTree
	    vim.api.nvim_set_hl(0, "NeoTreeGitAdded", { fg = "#50fa7b" })
	    vim.api.nvim_set_hl(0, "NeoTreeGitModified", { fg = "#ffb86c" })
	    vim.api.nvim_set_hl(0, "NeoTreeGitDeleted", { fg = "#ff5555" })
    end,
},
}
