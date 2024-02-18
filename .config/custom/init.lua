-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })

local opt = vim.opt

opt.number = true
opt.relativenumber = true
opt.numberwidth = 4
opt.tabstop = 2
opt.scrolloff = 8
