return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  keys = {
    { "<leader>tf", require("telescope.builtin").live_grep, desc = "live grep" },
    -- { "<leader>zf", require("telescope").extensions.chezmoi.find_files, desc = "chezmoi find files" },
  },
  dependencies = {
    "nvim-lua/plenary.nvim",
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
  end,
}
