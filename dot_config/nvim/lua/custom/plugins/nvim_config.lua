-- guide for nvim lua - https://github.com/nanotee/nvim-lua-guide
-- for relative line numbers

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "number"

vim.opt.scrolloff = 999

-- setup individual lsps
-- vim.lsp.start({
-- 	name = "gleam",
-- 	cmd = { "gleam" },
-- 	root_dir = vim.fs.dirname(vim.fs.find({ "gleam.toml" }, { upward = true })[1]),
-- })

return {}
