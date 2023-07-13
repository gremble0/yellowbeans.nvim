local M = {}

function M.load()
    vim.g.colors_name = "yellowbeans"
    require("yellowbeans").style()
end

return M
