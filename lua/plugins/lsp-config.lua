return {
	"neovim/nvim-lspconfig",
	lazy = false,
	config = function()
		local capabilities = require("cmp_nvim_lsp").default_capabilities()

		local lspconfig = require("lspconfig")

		lspconfig.lua_ls.setup({
			capabilities = capabilities,
			filetypes = { "lua" },
		})

		lspconfig.pyright.setup({
			capabilities = capabilities,
			filetypes = { "python" },
		})

		lspconfig.tsserver.setup({
			capabilities = capabilities,
			filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
		})

		lspconfig.tailwindcss.setup({
			capabilities = capabilities,
			filetypes = { "html", "css", "scss", "javascript", "typescript", "javascriptreact", "typescriptreact" },
		})

		lspconfig.eslint.setup({
			capabilities = capabilities,
			filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" },

			bin = "eslint",
			code_actions = {
				enable = true,
				apply_on_save = {
					enable = true,
					types = { "directive", "problem", "suggestion", "layout" },
				},
				disable_rule_comment = {
					enable = true,
					location = "separate_line", -- or `same_line`
				},
			},
			diagnostics = {
				enable = true,
				report_unused_disable_directives = false,
				run_on = "type", -- or `save`
			},
		})

		lspconfig.clangd.setup({
			capabilities = capabilities,
			filetypes = { "c", "cpp" },
		})

		lspconfig.ruff_lsp.setup({
			capabilities = capabilities,
			filetypes = { "python" },
		})

		lspconfig.rust_analyzer.setup({
			capabilities = capabilities,
			filetypes = { "rust" },
			root_dir = lspconfig.util.root_pattern("Cargo.toml"),
			settings = {
				["rust-analyzer"] = {
					cargo = {
						allFeatures = true,
						loadOutDirsFromCheck = true,
					},
					procMacro = {
						enable = true,
					},
				},
			},
		})

		lspconfig.gleam.setup({
			capabilities = capabilities,
			filetypes = { "gleam" },
		})
	end,
}
