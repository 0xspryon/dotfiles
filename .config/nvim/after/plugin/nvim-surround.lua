require("nvim-surround").setup({
  -- Configuration here, or leave empty to use defaults
  keymaps = {
   insert = "<C-g>s",
   insert_line = "<C-g>S",
   normal = "<leader>s",
   normal_cur = "<leader>ss",
   normal_line = "<leader>sl",
   normal_cur_line = "<leader>sL",
   visual = "<leader>s",
   visual_line = "<leader>sl",
   delete = "<leader>S",
   change = "<leader>sc",
  },
})
