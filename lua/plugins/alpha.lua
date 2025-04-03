return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    -- Custom Neovim ASCII Logo
    dashboard.section.header.val = {
		"	  ██████╗ ███████╗██████╗ ██╗      █████╗ ███████╗██╗   ██╗",
		"	  ██╔══██╗██╔════╝██╔══██╗██║     ██╔══██╗╚══███╔╝╚██╗ ██╔╝",
		"	  ██║  ██║█████╗  ██║  ██║██║     ███████║  ███╔╝  ╚████╔╝ ",
		"	  ██║  ██║██╔══╝  ██║  ██║██║     ██╔══██║ ███╔╝    ╚██╔╝  ",
		"	  ██████╔╝███████╗██████╔╝███████╗██║  ██║███████╗   ██║   ",
		"	  ╚═════╝ ╚══════╝╚═════╝ ╚══════╝╚═╝  ╚═╝╚══════╝   ╚═╝   ",
		"																  ",
    }

    -- Custom Buttons
    dashboard.section.buttons.val = {
      dashboard.button("f", "  Find file", ":Telescope find_files <CR>"),
      dashboard.button("n", "  New file", ":ene <BAR> startinsert <CR>"),
      dashboard.button("r", "  Recent files", ":Telescope oldfiles <CR>"),
      dashboard.button("g", "  Find text", ":Telescope live_grep <CR>"),
      dashboard.button("c", "  Config", ":e $MYVIMRC <CR>"),
      dashboard.button("q", "  Quit Neovim", ":qa<CR>"),
    }

    -- Set Footer (optional)
    dashboard.section.footer.val = { "🚀 LazyVim + Alpha-Nvim" }

    -- Apply Theme
    alpha.setup(dashboard.opts)
  end,
}

