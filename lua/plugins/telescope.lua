-- In your plugins configuration file
return {
  -- Include any plugins you're using
  {
    'nvim-telescope/telescope.nvim',
    config = function()
      -- Set keybind for file search to <space>f
      vim.api.nvim_set_keymap('n', '<space>f', ':Telescope find_files<CR>', { noremap = true, silent = true })
    end
  },
  require('telescope').setup {
    defaults = {
	    file_ignore_patterns = { "target" },
		}
	}
}

