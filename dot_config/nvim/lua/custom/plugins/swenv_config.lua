-- for use with python virtual environments - lets us switch venvs without restarting nvim

return {
	"AckslD/swenv.nvim",
	dependencies = {
		{ "nvim-telescope/telescope.nvim", branch = "0.1.x", dependencies = { "nvim-lua/plenary.nvim" } },
		{
			"stevearc/dressing.nvim",
			opts = {},
		},
		{
			"ahmedkhalf/project.nvim",
			config = function()
				require("project_nvim").setup()
			end,
		},
	},
	config = function()
		require("swenv").setup({
			-- Should return a list of tables with a `name` and a `path` entry each.
			-- Gets the argument `venvs_path` set below.
			-- By default just lists the entries in `venvs_path`.
			get_venvs = function(venvs_path)
				return require("swenv.api").get_venvs(venvs_path)
			end,
			-- Path passed to `get_venvs`.
			venvs_path = vim.fn.expand("~/venvs"),
			-- Something to do after setting an environment, for example call vim.cmd.LspRestart
			post_set_venv = nil,
		})

		vim.api.nvim_create_autocmd("FileType", {
			pattern = { "python" },
			callback = function()
				require("swenv.api").auto_venv()
			end,
		})
	end,
	keys = {
		{
			",v",
			function()
				require("swenv.api").get_current_venv()
			end,
		},
		{
			",pv",
			function()
				require("swenv.api").pick_venv()
			end,
		},
	},
}
