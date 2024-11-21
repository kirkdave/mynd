return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		local mason = require("mason")
		local mason_lspconfig = require("mason-lspconfig")
		local mason_tool_installer = require("mason-tool-installer")

		mason.setup({
			ui = {
				icons = {
					package_installed = "", -- \uf058
					package_pending = "", -- \uf0a9
					package_uninstalled = "", -- \uf530
				},
			},
		})

		mason_lspconfig.setup({
			ensure_installed = {
				"cssls",
				"cucumber_language_server",
				"docker_compose_language_service",
				"dockerls",
				"html",
				"java_language_server",
				"jsonls",
				"lua_ls",
				"marksman",
				"prismals",
				"ruby_lsp",
				"ts_ls",
			},
		})

		mason_tool_installer.setup({
			ensure_installed = {
				"erb-formatter",
				"prettier",
				"rubocop",
				"stylua",
			},
		})
	end,
}
