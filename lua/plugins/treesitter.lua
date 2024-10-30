return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local configs = require("nvim-treesitter.configs")
		opt = {
			ensure_installed = {"lua",},
			highlight = {
				enable = true,
			},
			sync_install = false,
			indent = { enable = true, },
			auto_install = true,
		}
		configs.setup(opt)
	end,
}
