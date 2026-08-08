return {
	"lervag/vimtex",
	lazy = false, -- we don't want to lazy load VimTeX
	tag = "v2.15",

	init = function()
		-- VimTeX configuration goes here
		vim.g.vimtext_view_method = "zathura"
	end,
}
