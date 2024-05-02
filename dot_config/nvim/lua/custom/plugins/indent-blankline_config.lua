return {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl",
	opts = {},
	config = function()
		local whitespaceHighlights = {
			"CursorColumn",
		}

		local indentHighlights = {
			"RainbowRed",
			"RainbowYellow",
			"RainbowBlue",
			"RainbowOrange",
			"RainbowGreen",
			"RainbowViolet",
			"RainbowCyan",
		}

		local hooks = require("ibl.hooks")

		hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
			vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#602C30" })
			vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#84704A" })
			vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#315675" })
			vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#755639" })
			vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#536B43" })
			vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#5F4A6B" })
			vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#29585E" })
		end)

		require("ibl").setup({
			indent = { highlight = indentHighlights },
			whitespace = {
				highlight = whitespaceHighlights,
			},
		})
	end,
}
