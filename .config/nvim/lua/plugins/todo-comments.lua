local auditKeywords = {}
local tealColor = "#008080"
auditKeywords["audit-info"] = { icon = " ", color = "warning", alt = { "aui" } } -- something we aren't yet sure if it's a certain bug
auditKeywords["audit-note"] = { icon = "", color = tealColor, alt = { "aun", "audit note" } } -- Just a random note explaining the functioning of the indicated piece of code
auditKeywords["audit-finding"] = { icon = " ", color = "error" } -- marks a pontential issue we're highly certain it's an issue
auditKeywords["audit-completed"] = { icon = " ", color = "hint", alt = { "audit-resolved", "auc" } } -- marks an audit-finding as resolved and understood
auditKeywords["audited"] = { icon = " ", color = "test" } -- marks a file as already audited

local keywords = {
  FIX = {
    icon = " ", -- icon used for the sign, and in search results
    color = "error", -- can be a hex color, or a named color (see below)
    alt = { "FIXME", "BUG", "FIXIT", "ISSUE" }, -- a set of other keywords that all map to this FIX keywords
    -- signs = false, -- configure signs for some keywords individually
  },
  TODO = { icon = " ", color = "info", alt = { "todo" } },
  HACK = { icon = " ", color = "warning", alt = { "hack" } },
  WARN = { icon = " ", color = "warning", alt = { "warning" } },
  PERF = { icon = " ", alt = { "perf", "performance" } },
  NOTE = { icon = " ", color = "hint", alt = { "INFO" } },
  CONTINUE = { icon = "", color = "test", alt = { "continue-here" } },
  -- TEST = { icon = "⏲ ", color = "test", alt = { "TESTING", "PASSED", "FAILED" } },
}

return {
  {
    "folke/todo-comments.nvim",
    lazy = false,
    priority = 1000,
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
      keywords = vim.tbl_deep_extend("force", keywords, auditKeywords),
    },
  },
}
