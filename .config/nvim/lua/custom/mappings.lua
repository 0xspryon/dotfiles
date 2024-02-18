---@type MappingsTable
local M = {}

M.general = {
  n = {
    --  format with conform
    ["<leader>fm"] = {
      function()
        require("conform").format()
      end,
      "formatting",
    },
    ["<leader>w"] = { "viw", "Quickly select one 'word'"},
    ["<leader>W"] = { "viW", "Quickly select one 'WORD'"},
    ["gl"] = { "$", "Go to eol"},
    ["gh"] = { "^", "Go to first non empty character of line"},
    ["<leader>q"] = { "@q", "Play macro at register 'q'"},
    ["<leader>Q"] = { "qq", "Start registering macro at register 'q'"},
    ["<S-u>"] = { "<C-r>", "Redo with capital 'U'"},
    ["\\q"] = { ":wq<CR>", "Write changes and quit"},
    ["\\Q"] = { ":q!<CR>", "Quite without writing changes"},
    ["\\w"] = { ":w<CR>", "Write changes"},
    -- [";"] = { ":", "enter command mode", opts = { nowait = true } },
  },
  v = {
    [">"] = { ">gv", "Indents right and holds current selection so that we can continue indentation"},
    ["<"] = { "<gv", "Indents left and holds current selection so that we can continue indentation"},
    ["gj"] = { "<ESC>'<V'>+1", "Set selection direction to downwards ⬇️ "},
    ["gk"] = { "<ESC>'>V'<-2", "Set selection direction to upwards ⬆️ "},
    ["gl"] = { "$", "Go to end of line"},
    ["gh"] = { "^", "Go to first non empty character of line"},
    ["p"] = { '"_dP', "paste in visual mode without overwridding the default buffer"},
  },
}

-- more keybinds!

return M
