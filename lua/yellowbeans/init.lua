local styles = require("yellowbeans.styles")

return {
  -- Main setup function that applies highlight groups through the vim api
  setup = function()
    for hl_name, hl_style in pairs(styles) do
      vim.api.nvim_set_hl(0, hl_name, hl_style)
    end
  end,
}
