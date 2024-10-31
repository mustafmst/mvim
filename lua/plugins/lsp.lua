local lsp_config_module = require('config.lsp')

local lsps = {}

for k, _ in pairs(lsp_config_module) do
	table.insert(lsps, k)
end

return {
	{
		"williamboman/mason.nvim",
		config = function()
			require('mason').setup({})
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = lsps,
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			for _, v in pairs(lsp_config_module) do
				v.setup_lsp()
			end
		end,
		keys = {
			{ "<leader>cl", "<cmd>LspInfo<cr>",          desc = "Lsp Info" },
			{ "gd",         vim.lsp.buf.definition,      desc = "Goto Definition" },
			{ "gr",         vim.lsp.buf.references,      desc = "References",                 nowait = true },
			{ "gI",         vim.lsp.buf.implementation,  desc = "Goto Implementation" },
			{ "gy",         vim.lsp.buf.type_definition, desc = "Goto T[y]pe Definition" },
			{ "gD",         vim.lsp.buf.declaration,     desc = "Goto Declaration" },
			{ "K",          vim.lsp.buf.hover,           desc = "Hover" },
			{ "gK",         vim.lsp.buf.signature_help,  desc = "Signature Help" },
			{ "<c-k>",      vim.lsp.buf.signature_help,  mode = "i",                          desc = "Signature Help" },
			{ "<leader>ca", vim.lsp.buf.code_action,     desc = "Code Action",                mode = { "n", "v" } },
			{ "<leader>cc", vim.lsp.codelens.run,        desc = "Run Codelens",               mode = { "n", "v" } },
			{ "<leader>cC", vim.lsp.codelens.refresh,    desc = "Refresh & Display Codelens", mode = { "n" } },
			{ "<leader>cr", vim.lsp.buf.rename,          desc = "Rename" },
			{ "<leader>cf", vim.lsp.buf.format,          desc = "format file",                mode = { "n", "v" } },
		},
	},
}
