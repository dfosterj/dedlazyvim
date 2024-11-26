return {
  'akinsho/toggleterm.nvim',
  version = "*",
  -- Load the plugin when a file is read or a new file is created
  event = { 'BufReadPre', 'BufNewFile' },
  -- Plugin-specific options
  opts = {
    size = function(term)
      if term.direction == "horizontal" then
        return 15
      elseif term.direction == "vertical" then
        return vim.o.columns * 0.4
      else
        return 20
      end
    end,
    open_mapping = [[<c-\>]],
    direction = 'horizontal',
  },
  config = function(_, opts)
    -- Initialize the plugin with the provided options
    require('toggleterm').setup(opts)

    -- Keybindings for managing tabs and panes
    local map = vim.api.nvim_set_keymap
    local default_opts = { noremap = true, silent = true }

    -- ToggleTerm specific commands
    map('n', '<leader>tt', ':ToggleTerm<CR>', default_opts) -- Open default terminal
    map('n', '<leader>tT', ':ToggleTerm direction=float<CR>', default_opts) -- Open floating terminal
    map('n', '<leader>tv', ':ToggleTerm direction=vertical<CR>', default_opts) -- Open vertical terminal
    map('n', '<leader>th', ':ToggleTerm direction=horizontal<CR>', default_opts) -- Open horizontal terminal

    -- Tabs management
    map('n', '<leader>tn', ':tabnew<CR>', default_opts) -- Create a new tab
    map('n', '<leader>tc', ':tabclose<CR>', default_opts) -- Close the current tab
    map('n', '<leader>to', ':tabonly<CR>', default_opts) -- Close all other tabs
    map('n', '<leader>t]', ':tabnext<CR>', default_opts) -- Switch to next tab
    map('n', '<leader>t[', ':tabprevious<CR>', default_opts) -- Switch to previous tab

    -- Pane management
    map('n', '<leader>ws', ':split<CR>', default_opts) -- Create a horizontal split
    map('n', '<leader>wv', ':vsplit<CR>', default_opts) -- Create a vertical split
    map('n', '<leader>wc', '<C-w>c', default_opts) -- Close the current pane
    map('n', '<leader>wh', '<C-w>h', default_opts) -- Move to the left pane
    map('n', '<leader>wj', '<C-w>j', default_opts) -- Move to the pane below
    map('n', '<leader>wk', '<C-w>k', default_opts) -- Move to the pane above
    map('n', '<leader>wl', '<C-w>l', default_opts) -- Move to the right pane
  end,
}

