local M = {}

-- Main setup function that applies highlight groups through the vim api
M.setup = function()
  for _, hl_group in ipairs(require("yellowbeans.styles").hl_groups) do
    -- hl_group[1] = name of highlight group
    -- hl_group[2] = table of styles for that highlight group
    vim.api.nvim_set_hl(0, hl_group[1], hl_group[2])
  end
end

return M
