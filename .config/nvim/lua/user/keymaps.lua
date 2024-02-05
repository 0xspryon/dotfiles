function getOpts(description)
				return { noremap = true, silent = true, desc = description }
end

local term_opts = { silent = true }

-- Shorten function name
local km = vim.keymap

-- Remap space as leader key
km.set("", "<Space>", "<Nop>", getOpts("unassign space from any keymap in all modes"))
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n"
--   insert_mode = "i"
--   visual_mode = "v"
--   visual_block_mode = "x"
--   term_mode = "t"
--   command_mode = "c"

--------------------------------------------------------------------------------------------------
-- Normal --
--------------------------------------------------------------------------------------------------
km.set("n", "<leader>e", ":Explore 30<cr>", getOpts("Open Lexplorer"))

-- Quickly selections
km.set("n", "<leader>c", "cc", getOpts("Change n parameter ( default = 1 ) lines"))
km.set("n", "<leader>C", "ciW", getOpts("Quickly delete and enter insert mode on one 'WORD'"))
km.set("n", "<leader>d", "dd", getOpts("Delete n parameter ( default = 1 ) lines"))
km.set("n", "<leader>D", "DiW", getOpts("Quickly delete one 'WORD'"))
km.set("n", "<leader>x", "viwx", getOpts("Quickly cut one 'word'"))
km.set("n", "<leader>X", "viWx", getOpts("Quickly cut one 'WORD'"))
km.set("n", "<leader>y", "yy", getOpts("Yank n parameter ( default = 1 ) lines"))
km.set("n", "<leader>Y", "viWy", getOpts("Quickly yank one 'WORD'"))
km.set("n", "<leader>w", "viw", getOpts("Quickly select one 'word'"))
km.set("n", "<leader>W", "viW", getOpts("Quickly select one 'WORD'"))
-- go to start and end of line
km.set("n", "gl", "$", getOpts("Go to end of line"))
km.set("n", "gh", "^", getOpts("Go to first non empty character of line"))
-- Quickly start and play a macro on the `2` register
km.set("n", "<leader>q", "@q", getOpts("Play macro at register 'q'"))
km.set("n", "<leader>Q", "qq", getOpts("Start registering macro at register 'q'"))
km.set("n", "<S-u>", "<C-r>", getOpts("Redo with capital 'U'"))

--------------------------------------------------------------------------------------------------
-- Insert --
--------------------------------------------------------------------------------------------------
km.set("i", "jk", "<ESC>", getOpts("Presses escape in insert mode"))

--------------------------------------------------------------------------------------------------
-- Visual --
--------------------------------------------------------------------------------------------------

-- Extend quick selections of the normal mode
km.set("v", "<leader>w", "<ESC>WviW", getOpts("Unselect current 'WORD' and select the next 'WORD'"))
km.set("v", "gk", "<ESC>'>V'<-2", getOpts("Set selection direction to upwards ⬆️ "))
km.set("v", "gj", "<ESC>'<V'>+1", getOpts("Set selection direction to downwards ⬇️ "))
-- select all in visual
-- @todo: Ask Tabot Kevin about how to keep the current line in the center of the screen after selecting all.
km.set("v", "<leader>a", "<ESC>mzVG1gg", getOpts("Select all in visual and set a mark on the current line on register z"))

-- Stay in indent mode
km.set("v", "<", "<gv", getOpts("Holds current selection so that we can continue indentation"))
km.set("v", ">", ">gv", getOpts("Holds current selection so that we can continue indentation"))
-- go to start and end of line
km.set("v", "gl", "$", getOpts("Go to end of line"))
km.set("v", "gh", "^", getOpts("Go to first non empty character of line"))

km.set("v", "p", '"_dP', getOpts("paste in visual mode without overwritting the default buffer"))

--------------------------------------------------------------------------------------------------
-- Command mode --
--------------------------------------------------------------------------------------------------
