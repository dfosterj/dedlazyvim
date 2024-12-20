return {
  -- Include any plugins you're using
  {
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },  -- Ensure plenary.nvim is installed for Telescope
    config = function()
      -- Set keybind for file search to <space>f
      vim.api.nvim_set_keymap('n', '<space>f', ':Telescope find_files<CR>', { noremap = true, silent = true })

      -- Configure Telescope settings
      require('telescope').setup {
        defaults = {
          file_ignore_patterns = { "target" },  -- Ignore the target directory during searches
        },
      }
    end
  }
}

