return {
	"folke/todo-comments.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	keys = {
		{
			"]t",
			function()
				require("todo-comments").jump_next()
			end,
			{ desc = "Next todo" },
		},
		{
			"[t",
			function()
				require("todo-comments").jump_prev()
			end,
			{ desc = "Prev todo" },
		},
	},
	opts = {
		-- your configuration comes here
		-- or leave it empty to use the default settings
		-- refer to the configuration section below
	},
}
