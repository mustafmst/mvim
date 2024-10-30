return {
	{
		'nvim-telescope/telescope.nvim',
		tag = '0.1.5',
		dependencies = { 'nvim-lua/plenary.nvim' },
		keys = function()
			local telescope = require('telescope.builtin')
			local theme = require("telescope.themes").get_dropdown({})
			return {
				{ "<leader>ff", function() telescope.find_files(theme) end,  desc = "Find Files" },
				{ "<leader>f/", function() telescope.live_grep(theme) end,   desc = "Live Grep Files" },
				{ "<leader>fb", function() telescope.buffers(theme) end,     desc = "Open Buffers" },
				-- TODO: set select string grep to normal and visual mode
				{ "<leader>f*", function() telescope.grep_string(theme) end, desc = "Live Grep Selected String" },
			}
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			-- This is your opts table
			require("telescope").setup {
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown {
							-- even more opts
						}

						-- pseudo code / specification for writing custom displays, like the one
						-- for "codeactions"
						-- specific_opts = {
						--   [kind] = {
						--     make_indexed = function(items) -> indexed_items, width,
						--     make_displayer = function(widths) -> displayer
						--     make_display = function(displayer) -> function(e)
						--     make_ordinal = function(e) -> string
						--   },
						--   -- for example to disable the custom builtin "codeactions" display
						--      do the following
						--   codeactions = false,
						-- }
					}
				}
			}
			-- To get ui-select loaded and working with telescope, you need to call
			-- load_extension, somewhere after setup function:
			require("telescope").load_extension("ui-select")
		end,
	},
}
