-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

map("n", "gH", "0", { desc = "Go to the start of the line", remap = true })
map("n", "gh", "^", { desc = "Go to first non-empty character of the line", remap = true })
map("n", "gl", "$", { desc = "Go to the last character of the line", remap = true })
map("i", "jj", "<esc>", { desc = "Switch to normal mode", remap = true })
map("i", "jk", "<cmd>w<cr><esc>", { desc = "Switch to normal mode and save file", remap = true })
map("i", "<C-l>", "<C-o>l", { desc = "Switch to normal mode", remap = true })
map("i", "<C-h>", "<C-o>h", { desc = "Switch to normal mode", remap = true })
map("i", "<C-k>", "<C-o>k", { desc = "Switch to normal mode", remap = true })
map("i", "<C-j>", "<C-o>j", { desc = "Switch to normal mode", remap = true })
map("n", "gp", function()
  require("telescope.builtin").builtin()
end, { desc = "Lists Built-in telescope pickers and run them on <cr>", remap = true })
map("v", "gj", "<esc>'<V'>+1", { desc = "Set selection direction to downwards ⬇️ ", remap = true })
map("v", "gk", "<esc>'>V'<-2", { desc = "Set selection direction to upwards ⬆️ ", remap = true })

-- Todo-comments keymaps for audit tags
map("n", "]ta", function()
  require("todo-comments").jump_next({ keywords = { "audit-info", "audit-note", "audit-finding" } })
end, { desc = "Navigate to next audit tag in current file ", remap = true })
map("n", "[ta", function()
  require("todo-comments").jump_prev({ keywords = { "audit-info", "audit-note", "audit-finding" } })
end, { desc = "Navigate to previous audit tag in current file ", remap = true })
map(
  "n",
  "<leader>far",
  "<cmd>TodoTelescope keywords=audit-info,audit-finding,audit-completed<cr>",
  { desc = "Open all the Audit tag comments in Telescope", remap = true }
)
map("n", "<leader>faf", function()
  require("telescope.builtin").find_files({ cwd = "./findings" })
end, { desc = "Open all the Audit tag comments in Telescope", remap = true })
map("n", "<leader>saf", function()
  require("telescope.builtin").live_grep({ cwd = "./findings" })
end, { desc = "Telescope live grep in the findings folder", remap = true })

-- NVIM-UFO
vim.keymap.set("n", "zR", require("ufo").openAllFolds, { desc = "Open all folds", remap = true })
vim.keymap.set("n", "zM", require("ufo").closeAllFolds, { desc = "Close all folds", remap = true })
vim.keymap.set("n", "zk", function()
  local winid = require("ufo").peekFoldedLinesUnderCursor()
  if not winid then
    vim.lsp.buf.hover()
  end
end, { desc = "Peek folded lines under cursor", remap = true })
