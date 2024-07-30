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
    vim.keymap.set("n", "Gb", gitlab.choose_merge_request)
    vim.keymap.set("n", "Gr", gitlab.review)
    vim.keymap.set("n", "Gs", gitlab.summary)
    vim.keymap.set("n", "GA", gitlab.approve)
    vim.keymap.set("n", "GR", gitlab.revoke)
    vim.keymap.set("n", "Gc", gitlab.create_comment)
    vim.keymap.set("n", "GO", gitlab.create_mr)
    vim.keymap.set("n", "Gm", gitlab.move_to_discussion_tree_from_diagnostic)
    vim.keymap.set("n", "Gn", gitlab.create_note)
    vim.keymap.set("n", "Gd", gitlab.toggle_discussions)
    vim.keymap.set("n", "Gaa", gitlab.add_assignee)
    vim.keymap.set("n", "Gad", gitlab.delete_assignee)
    vim.keymap.set("n", "Gla", gitlab.add_label)
    vim.keymap.set("n", "Gld", gitlab.delete_label)
    vim.keymap.set("n", "Gra", gitlab.add_reviewer)
    vim.keymap.set("n", "Grd", gitlab.delete_reviewer)
    vim.keymap.set("n", "Gp", gitlab.pipeline)
    vim.keymap.set("n", "Go", gitlab.open_in_browser)
    vim.keymap.set("n", "GM", gitlab.merge)
    vim.keymap.set("n", "Gu", gitlab.copy_mr_url)
    vim.keymap.set("n", "GP", gitlab.publish_all_drafts)
    vim.keymap.set("n", "GD", gitlab.toggle_draft_mode)
    
    -- Keybindings in visual mode
    vim.keymap.set("v", "Gc", gitlab.create_multiline_comment)
    vim.keymap.set("v", "GC", gitlab.create_comment_suggestion)
  end,
}

