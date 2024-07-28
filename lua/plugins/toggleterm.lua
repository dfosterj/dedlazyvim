return {
  'akinsho/toggleterm.nvim',
  config = function()
    require("toggleterm").setup{
      -- Size can be a number or function which is passed the current terminal
      size = 20 | function(term)
        if term.direction == "horizontal" then
          return 15
        elseif term.direction == "vertical" then
          return vim.o.columns * 0.4
        end
      end,
      open_mapping = [[<c-\>]],
      hide_numbers = true, -- hide the number column in toggleterm buffers
      shade_filetypes = {},
      shade_terminals = true,
      shading_factor = 2, -- the degree by which to darken to terminal colour, default: 1 for dark backgrounds, 3 for light
      start_in_insert = true,
      insert_mappings = true, -- whether or not the open mapping applies in insert mode
      terminal_mappings = true, -- whether or not the open mapping applies in the opened terminals
      persist_size = true,
      direction = 'horizontal', -- 'vertical' | 'horizontal' | 'tab' | 'float',
      close_on_exit = true, -- close the terminal window when the process exits
      shell = vim.o.shell, -- change the default shell
      float_opts = {
        border = 'curved',
        winblend = 3,
        highlights = {
          border = "Normal",
          background = "Normal",
        }
      }
    }

    -- Key mappings
    vim.api.nvim_set_keymap("n", "<leader>tt", "<cmd>ToggleTerm direction=horizontal<cr>", {noremap = true, silent = true})
    vim.api.nvim_set_keymap("n", "<leader>tv", "<cmd>ToggleTerm direction=vertical<cr>", {noremap = true, silent = true})
    vim.api.nvim_set_keymap("n", "<leader>tf", "<cmd>ToggleTerm direction=float<cr>", {noremap = true, silent = true})
  end
}
