return {
  {
    "echasnovski/mini.cursorword",
    version = false,
    lazy = false,
    opts = {
      -- Delay (in ms) between when cursor moved and when highlighting appeared
      delay = 100,
    },
    config = function()
      require("mini.cursorword").setup()
    end,
  },
}
