return {
	'nvim-lualine/lualine.nvim',
	dependencies = { 'nvim-tree/nvim-web-devicons' },
	event = "VeryLazy",
	config = function()
		opt = {
			options = {
				theme = 'auto',
				-- section_separators = { left = '', right = '' },
				section_separators = { left = '◤', right = '◥' },
				-- component_separators = { left = '', right = '' }
				component_separators = { left = '╱', right = '╲' }
			},
		}
		require('lualine').setup(opt)
	end,
}
