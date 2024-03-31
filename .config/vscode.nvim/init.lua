-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Set to true if you have a Nerd Font installed
vim.g.have_nerd_font = true

-- [[ Setting options ]]
-- See `:help vim.opt`
-- NOTE: You can change these options as you wish!
--  For more options, you can see `:help option-list`

local opt = vim.opt

-- go to previous/next line with h,l,left arrow and right arrow
-- when cursor reaches end/beginning of line
opt.whichwrap:append "<>[]hl"

-- Make line numbers default
opt.number = true
opt.relativenumber = true

opt.showmode = false

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
-- opt.clipboard = 'unnamedplus'

-- Enable break indent
opt.breakindent = true

-- Save undo history
-- opt.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
opt.ignorecase = true
opt.smartcase = true
opt.mouse = ""

-- disable nvim intro
opt.shortmess:append "sI"

-- Keep signcolumn on by default
-- opt.signcolumn = 'yes'

-- Decrease update time
opt.updatetime = 250

-- Decrease mapped sequence wait time
-- Displays which-key popup sooner
-- @continue here: perhaps `jk` to escape can work because of this
opt.timeoutlen = 300

-- Configure how new splits should be opened
opt.splitright = true
opt.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
opt.list = true
opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitutions live, as you type!
opt.inccommand = 'split'

-- Show which line your cursor is on
opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
opt.scrolloff = 10

-- Indenting
-- One tab represents how many spaces
opt.expandtab = true
opt.shiftwidth = 2
opt.smartindent = true
opt.tabstop = 2
opt.softtabstop = 2
opt.backup = false

-- Set highlight on search, but clear on pressing <Esc> in normal mode
opt.hlsearch = true

-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Normal mode
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>', { desc = "Clear highlights"})
vim.keymap.set('n', '<leader>w', 'viw', { desc = 'Quickly select one "word"' })
vim.keymap.set('n', '<leader>W', 'viW', { desc = 'Quickly select one "WORD"' })
vim.keymap.set('n', 'gl', '$', { desc = 'Go to eol' })
vim.keymap.set('n', 'gh', '^', { desc = 'Go to first non empty character of line' })
vim.keymap.set('n', '<leader>q', '@q', { desc = 'Play macro at register "q"' })
vim.keymap.set('n', '<leader>Q', 'qq', { desc = 'Start registering macro at register "q"' })
vim.keymap.set('n', '<S-u>', '<C-r>', { desc = 'Redo' })
vim.keymap.set('n', '<C-s>', '<cmd> w <CR>', { desc = 'Save file' })
vim.keymap.set('n', '<C-c>', '<cmd> %y+ <CR>', { desc = 'Copy whole file' })
vim.keymap.set('n', 'Q', '@jj', { desc = 'Play the macro at `j` and go to the line below' })

-- TIP: Disable arrow keys in normal mode
vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Visual mode
vim.keymap.set('v', '>', '>gv', { desc = 'Indent right and holds current selection so that we can continue indentation' })
vim.keymap.set('v', '<', '<gv', { desc = 'Indent left and holds current selection so that we can continue indentation' })
vim.keymap.set('v', 'gj', "<ESC>'<V'>+1", { desc = 'Set selection direction to downwards' })
vim.keymap.set('v', 'gk', "<ESC>'>V'<-2", { desc = 'Set selection direction to upwards' })
vim.keymap.set('v', 'gl', "$", { desc = 'Go to end of line' })
vim.keymap.set('v', 'gh', "^", { desc = 'Go to first non empty character of line' })
vim.keymap.set('v', 'p', "_dp", { desc = 'Past in visual mode without overwriting the default buffer' })

-- command mode
vim.keymap.set('x', 'Q', ":norm @j<CR>", { desc = 'Play the macro at `j` on the current selection' })

-- Insert mode
--
-- Navigate within inset mode
vim.keymap.set('i', '<C-h>', '<Left>', { desc = "Move left"})
vim.keymap.set('i', '<C-l>', '<Right>', { desc = "Move right"})
vim.keymap.set('i', '<C-j>', '<Down>', { desc = "Move down"})
vim.keymap.set('i', '<C-k>', '<Up>', { desc = "Move up"})

-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- [[ Install `lazy.nvim` plugin manager ]]
--    See `:help lazy.nvim.txt` or https://github.com/folke/lazy.nvim for more info
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
end ---@diagnostic disable-next-line: undefined-field
opt.rtp:prepend(lazypath)

-- [[ Configure and install plugins ]]
--
--  To check the current status of your plugins, run
--    :Lazy
--
--  You can press `?` in this menu for help. Use `:q` to close the window
--
--  To update plugins you can run
--    :Lazy update
--
-- NOTE: Here is where you install your plugins.
require('lazy').setup({
  -- "gc" to comment visual regions/lines
  {
    'numToStr/Comment.nvim',
    keys = {
      { "gcc", mode = "n", desc = "Comment toggle current line" },
      { "gc", mode = { "n", "o" }, desc = "Comment toggle linewise" },
      { "gc", mode = "x", desc = "Comment toggle linewise (visual)" },
      { "gbc", mode = "n", desc = "Comment toggle current block" },
      { "gb", mode = { "n", "o" }, desc = "Comment toggle blockwise" },
      { "gb", mode = "x", desc = "Comment toggle blockwise (visual)" },
    },
    config = function(_, opts)
      require("Comment").setup(opts)
      vim.keymap.set(
        "n",
        "<leader>/",
        function()
          require("Comment.api").toggle.linewise.current()
        end,
        { desc = "Toggle comment"}
      )
      vim.keymap.set(
        "v",
        "<leader>/",
        "<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>",
        { desc = "Toggle comment"}
      )
    end,
  },
  {
    "folke/flash.nvim",
    event = "VeryLazy",
    opts = {
      modes = {
        char = {
          jump_labels = true
        }
      }
    },
    -- stylua: ignore
    keys = {
      { "gs", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
      { "gS", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
      { "gr", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
      { "gR", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
      { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
    },
  },
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
        require("nvim-surround").setup({
            -- Configuration here, or leave empty to use defaults
        })
    end
  },
  {
      'glacambre/firenvim',

      -- Lazy load firenvim
      -- Explanation: https://github.com/folke/lazy.nvim/discussions/463#discussioncomment-4819297
      lazy = not vim.g.started_by_firenvim,
      build = function()
          vim.fn["firenvim#install"](0)
      end,
      config = function()
        if vim.g.started_by_firenvim == true then
          vim.api.nvim_create_autocmd({'TextChanged', 'TextChangedI'}, {
              nested = true,
              command = "write"
          })
          vim.g.firenvim_config = {
              globalSettings = { alt = "all", cmdlineTimeout = 3000 },
              localSettings = {
                  [".*"] = {
                      cmdline  = "neovim",
                      content  = "text",
                      priority = 0,
                      selector = 'textarea:not([readonly], [aria-readonly]), div[role="textbox"]',
                      takeover = "never"
                  }
              }
          }
          vim.keymap.set("n", "<Esc><Esc>", "<Cmd>call firenvim#focus_page()<CR>", {})
          vim.keymap.set("n", "<C-z>", "<Cmd>call firenvim#hide_frame()<CR>", {})
        end
      end
  }
})


