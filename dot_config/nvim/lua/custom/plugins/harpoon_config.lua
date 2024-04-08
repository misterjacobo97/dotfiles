return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope.nvim" },
	config = function()
		local harpoon = require("harpoon")
		harpoon:setup()

		-- adds to the list
		vim.keymap.set("n", "<leader>ha", function() harpoon:list():add() end)

		-- quick menu
		vim.keymap.set("n", "<leader>hm", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

		-- select between first 5 items
		vim.keymap.set("n", "<leader>h1", function() harpoon:list():select(1) end)
		vim.keymap.set("n", "<leader>h2", function() harpoon:list():select(2) end)
		vim.keymap.set("n", "<leader>h3", function() harpoon:list():select(3) end)
		vim.keymap.set("n", "<leader>h4", function() harpoon:list():select(4) end)

		-- toggle back and forth
		vim.keymap.set("n", "<C-S-P>", function() harpoon:list():prev() end)
		vim.keymap.set("n", "<C-S-N>", function() harpoon:list():next() end)

		-- telescope config
		local conf = require("telescope.config").values
		local function toggle_telescope(harpoon_files)
			local file_paths = {}
			for _, item in ipairs(harpoon_files.items) do
				table.insert(file_paths, item.value)
			end

			require("telescope.pickers").new({}, {
				prompt_title = "Harpoon",
				finder = require("telescope.finders").new_table({
					results = file_paths,
				}),
				previewer = conf.file_previewer({}),
				sorter = conf.generic_sorter({}),
			}):find()
		end

		vim.keymap.set("n", "<leader>hl", function() toggle_telescope(harpoon:list()) end,
			{ desc = "Opeb harpoon window" })
	end

}
