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
				ensure_installed = {
					"lua_ls",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require('lspconfig')
			require 'lspconfig'.lua_ls.setup {
				on_init = function(client)
					if client.workspace_folders then
						local path = client.workspace_folders[1].name
						if vim.uv.fs_stat(path .. '/.luarc.json') or vim.uv.fs_stat(path .. '/.luarc.jsonc') then
							return
						end
					end

					client.config.settings.Lua = vim.tbl_deep_extend('force', client.config.settings.Lua, {
						runtime = {
							-- Tell the language server which version of Lua you're using
							-- (most likely LuaJIT in the case of Neovim)
							version = 'LuaJIT'
						},
						-- Make the server aware of Neovim runtime files
						workspace = {
							checkThirdParty = false,
							library = {
								vim.env.VIMRUNTIME
								-- Depending on the usage, you might want to add additional paths here.
								-- "${3rd}/luv/library"
								-- "${3rd}/busted/library",
							}
							-- or pull in all of 'runtimepath'. NOTE: this is a lot slower and will cause issues when working on your own configuration (see https://github.com/neovim/nvim-lspconfig/issues/3189)
							-- library = vim.api.nvim_get_runtime_file("", true)
						}
					})
				end,
				settings = {
					Lua = {}
				}
			}
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
