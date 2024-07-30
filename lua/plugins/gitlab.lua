return {
  'harrisoncramer/gitlab.nvim',
  -- Load the plugin when a file is read or a new file is created
  event = { 'BufReadPre', 'BufNewFile' },
  -- Conditional loading based on the presence of a GITLAB_TOKEN environment variable
  cond = function()
    return vim.env.GITLAB_TOKEN ~= nil and vim.env.GITLAB_TOKEN ~= ''
  end,
  -- Plugin-specific options
  opts = {
    -- Define any specific configuration options for the plugin here
  },
  config = function(_, opts)
    -- Call the plugin setup function with the provided options
    require('gitlab').setup(opts)
    
    -- Keybindings for gitlab.nvim functionalities
    local gitlab = require('gitlab')
    
    -- Keybindings in normal mode
    vim.keymap.set("n", "GB", gitlab.choose_merge_request)
    vim.keymap.set("n", "GR", gitlab.review)
    vim.keymap.set("n", "GS", gitlab.summary)
    vim.keymap.set("n", "GA", gitlab.approve)
    vim.keymap.set("n", "GR", gitlab.revoke)
    vim.keymap.set("n", "GC", gitlab.create_comment)
    vim.keymap.set("n", "GO", gitlab.create_mr)
    vim.keymap.set("n", "GM", gitlab.move_to_discussion_tree_from_diagnostic)
    vim.keymap.set("n", "GN", gitlab.create_note)
    vim.keymap.set("n", "GD", gitlab.toggle_discussions)
    vim.keymap.set("n", "GAA", gitlab.add_assignee)
    vim.keymap.set("n", "GAD", gitlab.delete_assignee)
    vim.keymap.set("n", "GLA", gitlab.add_label)
    vim.keymap.set("n", "GLD", gitlab.delete_label)
    vim.keymap.set("n", "GRA", gitlab.add_reviewer)
    vim.keymap.set("n", "GRD", gitlab.delete_reviewer)
    vim.keymap.set("n", "GP", gitlab.pipeline)
    vim.keymap.set("n", "GO", gitlab.open_in_browser)
    vim.keymap.set("n", "GM", gitlab.merge)
    vim.keymap.set("n", "GU", gitlab.copy_mr_url)
    vim.keymap.set("n", "GP", gitlab.publish_all_drafts)
    vim.keymap.set("n", "GD", gitlab.toggle_draft_mode)
    
    -- Keybindings in visual mode
    vim.keymap.set("v", "Gc", gitlab.create_multiline_comment)
    vim.keymap.set("v", "GC", gitlab.create_comment_suggestion)
  end,
}

