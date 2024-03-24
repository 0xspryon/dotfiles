local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "javascript",
    "typescript",
    "tsx",
    "markdown",
    "markdown_inline",
    "dockerfile",
    "gitignore",
    "git_config",
    "git_rebase",
    "gitcommit",
    "haskell",
    "json",
    "json5",
    "properties",
    "python",
    "rust",
    "scss",
    "solidity",
    "svelte",
    "yaml",
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "deno",
    "prettier",
    "svelte",
    "tailwindcss",
    "emmet_language_server",

    -- docker stuff
    "docker_compose_language_service",
    "dockerls",

    -- rust stuff
    "rust-analyzer",

    -- shell stuff
    "shfmt",
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

-- flash.nvim configuration
M.flash = {
    opts ={
      modes = {
        char = {
          jump_labels = true
        }
      }
    },
    keys = {
      { "gs", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
      { "gS", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
      { "gr", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
      { "gR", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
      { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
    },
}

return M
