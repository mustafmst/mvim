return {
  'nvim-telescope/telescope.nvim', tag = '0.1.5',
  dependencies = { 'nvim-lua/plenary.nvim' },
	keys = function()
		local telescope = require('telescope.builtin')
		local theme = require("telescope.themes").get_dropdown({})
		return {
			{"<leader>ff", function() telescope.find_files(theme) end, desc = "Find Files"},
			{"<leader>f/", function() telescope.live_grep(theme) end, desc = "Live Grep Files"},
			{"<leader>fb", function() telescope.buffers(theme) end, desc = "Open Buffers"},
			-- TODO: set select string grep to normal and visual mode
			{"<leader>f*", function() telescope.grep_string(theme) end, desc = "Live Grep Selected String"},
		}
	end,
}
