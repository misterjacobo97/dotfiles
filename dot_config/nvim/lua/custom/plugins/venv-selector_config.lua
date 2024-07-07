-- for use with python virtual environments - lets us switch venvs without restarting nvim

return {
	"linux-cultist/venv-selector.nvim",
	dependencies = {
		"neovim/nvim-lspconfig",
		"mfussenegger/nvim-dap",
		"mfussenegger/nvim-dap-python", --optional
		{ "nvim-telescope/telescope.nvim", branch = "0.1.x", dependencies = { "nvim-lua/plenary.nvim" } },
	},
	lazy = false,
	branch = "regexp", -- This is the regexp branch, use this for the new version
	config = function()
		require("venv-selector").setup({
			settings = {
				options = {
					notify_user_on_venv_activation = true,
				},
			},
		})
	end,
	keys = {
		{ ",v", "<cmd>VenvSelect<cr>" },
	},
}
