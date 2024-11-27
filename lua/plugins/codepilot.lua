
return {
	-- 'Exafunction/codeium.vim',
	'github/copilot.vim',
	event = 'BufEnter'

	require('copilot').setup({
			-- General Copilot configuration options can go here
			suggestion = {
				-- Set the auto-accept suggestion behavior to use the Tab key
				auto_accept = true,  -- Automatically accept a suggestion
				keymap = {
					accept = "<Tab>",  -- Use Tab to accept the suggestion
				},
			},
			panel = {
				-- Configuration for the suggestion panel
				enabled = true,
				auto_refresh = true,
			},
		})


