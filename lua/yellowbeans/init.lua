local M = {}

local styles = require("yellowbeans.styles")

-- Main setup function that applies highlight groups through the vim api
M.setup = function()
  for hl_name, hl_style in pairs(styles.hl_groups) do
    vim.api.nvim_set_hl(0, hl_name, hl_style)
  end
end

return M
