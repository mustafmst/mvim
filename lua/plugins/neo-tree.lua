return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
    	dependencies = {
      		"nvim-lua/plenary.nvim",
      		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },
	keys = {
		{"<leader>e", ":Neotree filesystem toggle left <cr>", desc = "Open files tree"},
		{"<leader>tf", ":Neotree filesystem toggle left <cr>", desc = "Open files tree"},
		{"<leader>tb", ":Neotree buffers toggle left <cr>", desc = "Open buffers tree"},
		{"<leader>tg", ":Neotree git_status toggle left <cr>", desc = "Open git tree"},
	},
}
