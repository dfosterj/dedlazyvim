return {
  {
    'nvim-telescope/telescope.nvim',
    config = function()
      -- Set keybind for file search to <space>f
      vim.api.nvim_set_keymap('n', '<space>f', ':Telescope find_files<CR>', { noremap = true, silent = true })
    end
  },
}

