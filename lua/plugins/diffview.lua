-- plugins/diffview_nvim.lua
return {
  'sindrets/diffview.nvim',
  requires = 'nvim-lua/plenary.nvim',
  -- Load the plugin when a file is read or a new file is created
  event = { 'BufReadPre', 'BufNewFile' },
  -- Plugin-specific options
  opts = {
    -- Define any specific configuration options for the plugin here
    use_icons = true, -- Requires nvim-web-devicons
  },
  config = function(_, opts)
    -- Call the plugin setup function with the provided options
    require('diffview').setup(opts)

    -- Keybindings for diffview.nvim functionalities
    local map = vim.api.nvim_set_keymap
    local default_opts = { noremap = true, silent = true }

    -- Example keybindings, adjust as needed
    map('n', '<leader>dv', ':DiffviewOpen<CR>', default_opts) -- Open Diffview
    map('n', '<leader>dc', ':DiffviewClose<CR>', default_opts) -- Close Diffview
    map('n', '<leader>dh', ':DiffviewFileHistory<CR>', default_opts) -- File history
  end,
}

