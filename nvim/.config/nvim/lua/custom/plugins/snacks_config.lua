return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  ---@type snacks.Config
  opts = {
    dashboard = { enabled = true },
    indent = { enabled = true },
    debug = { enabled = true },
    git = { enabled = true },
    input = { enabled = true },
    lazygit = { enabled = true },
    notifier = {
      enabled = true,
      timeout = 3000,
    },
    rename = { enabled = true },
    scratch = { enabled = true },
    scroll = { enabled = true },
    statuscolumn = { enabled = true },
    terminal = { enabled = true },
    win = {
      enabled = true,
      style = "terminal",
    },
    words = { enabled = true },
  },
  keys = {
    { "<leader>n", function() Snacks.notifier.show_history() end, desc = "Notification History" },
    { "<C-/>",     function() Snacks.terminal() end,              desc = "Toggle Terminal" },
    { "<C-_>",     function() Snacks.terminal() end,              desc = "which_key_ignore" },
  },
}
