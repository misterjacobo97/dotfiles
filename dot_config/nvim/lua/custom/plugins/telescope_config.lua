return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	keys = {
		{ "<leader>tf", require("telescope.builtin").live_grep, desc = "live grep" },
		{ "<leader>zf", require("telescope").extensions.chezmoi.find_files, desc = "chezmoi find files" },
	},
	dependencies = {
		"nvim-lua/plenary.nvim",
		"BurntSushi/ripgrep",
		-- Fuzzy Finder Algorithm which requires local dependencies to be built.
		-- Only load if `make` is available. Make sure you have the system
		-- requirements installed.
		{ "nvim-telescope/telescope-live-grep-args.nvim", version = "^1.0.0" },
		{
			"nvim-telescope/telescope-fzf-native.nvim",
			-- NOTE: If you are having trouble with this installation,
			--       refer to the README for telescope-fzf-native for more instructions.
			build = "make",
			cond = function()
				return vim.fn.executable("make") == 1
			end,
		},
	},
	config = function()
		local telescope = require("telescope")

		telescope.setup({

			defaults = {
				mappings = {
					i = {
						["<C-u>"] = false,
						["<C-d>"] = false,
					},
				},
			},
		})

		telescope.load_extension("chezmoi")
		telescope.load_extension("live_grep_args")
	end,
}
