return {
	"zaldih/themery.nvim",
	lazy = false,

	dependencies = {
		"folke/tokyonight.nvim",
		"catppuccin/nvim",
		"rebelot/kanagawa.nvim",
		"ellisonleao/gruvbox.nvim",
		"rose-pine/neovim",
	},

	config = function()
		require("themery").setup({
			themes = {
				"catppuccin-mocha",
				"catppuccin-macchiato",

				"gruvbox",

				"kanagawa-dragon",
				"kanagawa-wave",

				"rose-pine",
				"rose-pine-moon",

				"tokyonight-night",
				"tokyonight-storm",
			},
			livePreview = true,

			vim.keymap.set("n", "<leader>th", "<cmd>Themery<CR>", {
				desc = "Themery - Choose theme",
			}),
		})
	end,
}
