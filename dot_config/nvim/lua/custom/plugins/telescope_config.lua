-- telscope-config.lua
local telescope = require("telescope")

telescope.setup({
	-- ... your telescope config
})

telescope.load_extension("chezmoi")
vim.keymap.set("n", "<leader>cz", telescope.extensions.chezmoi.find_files, {})

return {}
