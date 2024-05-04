return {
	"stevearc/conform.nvim",
	event = { "BufWritePre" },
	cmd = { "ConformInfo" },
	keys = {
		{
			"<C-S>f",
			function()
				require("conform").format({ async = true, lsp_fallback = true })
			end,
			mode = "",
			desc = "format buffer",
		},
	},
	config = function() 
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				typescript = { {"prettierd", "prettier"} },
				typescriptreact = { {"prettierd", "prettier"} },
				javascript = { {"prettierd", "prettier"} },
				javascriptreact = { {"prettierd", "prettier"} },
				bash = { "shfmt" },
			},
			format_on_save = { timeout_ms = 1000, lsp_fallback = true },

		})
	end
	-- opts = {
	-- 	formatters_by_ft = {
	-- 		lua = { "stylua" },
	-- 		typescript = { {"prettierd", "prettier"} },
	-- 		typescriptreact = { {"prettierd", "prettier"} },
	-- 		javascript = { {"prettierd", "prettier"} },
	-- 		javascriptreact = { {"prettierd", "prettier"} },
	-- 		bash = { "shfmt" },
	-- 	},
	-- 	format_on_save = { timeout_ms = 1000, lsp_fallback = true },
	-- },
}
