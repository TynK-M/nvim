return {
	"TynK-M/nvim-serpy",

	config = function()
		require("serpy").setup({
			languages = {
				python = { enabled = true },
			},

			keymaps = {
				enabled = true,

				pyrun_current = "<leader>pc",
				-- pyrun_current_with_flags = "<leader>pf",
				-- pydoc = "<leader>pd",
				-- pydoc_current_word = "<leader>pw",

				-- luarun_current = "<leader>lc",

				zigbuildrun = "<leader>zbr",
			},
		})
	end,
}
