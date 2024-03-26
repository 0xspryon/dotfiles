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

-- nvim-ufo
opt.foldcolumn = '0' -- '0' is not bad
opt.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
opt.foldlevelstart = 99
opt.foldnestmax = 4
opt.foldenable = true
