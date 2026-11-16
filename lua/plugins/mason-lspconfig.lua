return {
	"williamboman/mason-lspconfig.nvim",

	dependencies = {
		{ "mason-org/mason.nvim", opts = {} },
		"neovim/nvim-lspconfig",
	},

	config = function()
		vim.lsp.config("rust_analyzer", {
			settings = {
				["rust-analyzer"] = {
					cargo = {
						allFeatures = true,
					},
					check = {
						command = "clippy",
					},
				},
			},
		})

		require("mason-lspconfig").setup({
			ensure_installed = {
				"lua_ls",
				"pyright",
				"rust_analyzer",
				"clangd",
				"zls",
			},
		})
	end,
}
