---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {

  -- nvdash (dashboard)
  nvdash = {
    load_on_startup = true,

    header = {
"  ___          _____  _____   _____  __     __  ____   _   _ ",
" / _ \\        / ____||  __ \\ |  __ \\ \\ \\   / / / __ \\ | \\ | |",
"| | | |__  __| (___  | |__) || |__) | \\ \\_/ / | |  | ||  \\| |",
"| | | |\\ \\/ / \\___ \\ |  ___/ |  _  /   \\   /  | |  | || . ` |",
"| |_| | >  <  ____) || |     | | \\ \\    | |   | |__| || |\\  |",
" \\___/ /_/\\_\\|_____/ |_|     |_|  \\_\\   |_|    \\____/ |_| \\_|",
"                                                             ",
    },
  },
  theme = "falcon",
  theme_toggle = { "falcon", "one_light" },

  hl_override = highlights.override,
  hl_add = highlights.add,
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
