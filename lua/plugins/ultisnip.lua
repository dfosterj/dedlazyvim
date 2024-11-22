return{
{
    "SirVer/ultisnips",
    init = function()
      -- -- Unmap the <tab> key
      -- vim.api.nvim_del_keymap('i', '<tab>')
      -- vim.api.nvim_del_keymap('s', '<tab>')

      -- -- Alternative way to unmap in case it was set with a specific option
      -- vim.api.nvim_set_keymap('i', '<tab>', '', { noremap = true, silent = true })
      -- vim.api.nvim_set_keymap('s', '<tab>', '', { noremap = true, silent = true })

      -- vim.g.UltiSnipsExpandTrigger = '<tab>'
      vim.g.UltiSnipsExpandTrigger = '<C-K>'
      vim.g.UltiSnipsJumpForwardTrigger = '<tab>'
      vim.g.UltiSnipsJumpBackwardTrigger = '<c-b>'
      vim.g.UltiSnipsEditSplit = 'vertical'
      vim.g.UltiSnipsSnippetDirectories = {'~/.vim/UltiSnips', 'UltiSnips'}

      vim.api.nvim_set_keymap('n', '<Leader>ue', ':UltiSnipsEdit<CR>', { noremap = true, silent = true })
    end,
  },
}
