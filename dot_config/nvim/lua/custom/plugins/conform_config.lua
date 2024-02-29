return {
	"stevearc/conform.nvim",
	event = { "BufWritePre" },
	cmd = { "ConformInfo" },
	keys = {
		{
			"<leader>f",
			function()
				require("conform").format({ async = true, lsp_fallback = true })
			end,
			mode = "",
			desc = "format buffer",
		},
	},

	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			typescript = { "prettierd", "prettier" },
			bash = { "shfmt" },
		},
		format_on_save = { timeout_ms = 1000, lsp_fallback = true },
	},
}
