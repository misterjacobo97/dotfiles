return {
  -- Set lualine as statusline
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  -- See `:help lualine.txt`

  opts = {
    sections = {
      lualine_x = { { "swenv", icon = "" }, "encoding", "fileformat", "filetype" },
    },

    options = {
      icons_enabled = true,
      theme = "auto",
      component_separators = "|",
      section_separators = "",
    },
  },
}
