-- allow you to automatically apply changes on files under chezmoi source path
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
	pattern = { os.getenv("HOME") .. "/.local/share/chezmoi/*" },
	callback = function()
		vim.schedule(require("chezmoi.commands.__edit").watch)
	end,
})

return {
	"xvzc/chezmoi.nvim",
	dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope.nvim" },

	config = function()
		require("chezmoi").setup({
			edit = {
				watch = false, -- Set true to automatically apply on save.
				force = false, -- Set true to force apply. Works only when watch = true.
			},
			notification = {
				on_open = true, -- vim.notify when start editing chezmoi-managed file.
				on_apply = true, -- vim.notify on apply.
			},
		})

		-- command shortcuts
		vim.keymap.set("n", "<leader>ft", function()
			require("chezmoi").apply()
		end)
	end,
}
