return {
  {
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      -- Keybinding for find_files with hidden files, excluding .git directories
      vim.api.nvim_set_keymap('n', '<space>f', '', {
        noremap = true,
        silent = true,
        callback = function()
          require('telescope.builtin').find_files({ hidden = true })
        end,
      })

      -- Keybinding for live_grep with hidden files, excluding .git directories
      vim.api.nvim_set_keymap('n', '<space>g', '', {
        noremap = true,
        silent = true,
        callback = function()
          require('telescope.builtin').live_grep({
            additional_args = function()
              return { "--hidden", "--glob", "!.git/*" }
            end,
          })
        end,
      })

      -- Telescope setup
      require('telescope').setup {
        defaults = {
          file_ignore_patterns = { ".git/" }, -- Ignore .git directories
        },
        pickers = {
          find_files = {
            hidden = true, -- Include hidden files
          },
        },
      }
    end,
  },
}

