
return {
  'github/copilot.vim',
  event = 'BufEnter',
  config = function()
    vim.g.copilot_enabled = false
  end,
}

