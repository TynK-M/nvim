return {
	"stevearc/conform.nvim",

	event = {
		"BufWritePre",
	},

	opts = {
		notify_on_error = false,
		format_on_save = function(bufnr)
			if vim.api.nvim_buf_line_count(bufnr) > 5000 then
				return
			end
			return { timeout_ms = 500, lsp_fallback = true }
		end,

		formatters_by_ft = {
			lua = { "stylua" },
			python = { "black" },
			rust = { "rustfmt" },
			markdown = { "mdformat" },
		},
	},
}
