local M = {}

---@param filename string
---@return nil
function M.fn(filename)
  vim.cmd({ cmd = "bdelete", args = { filename } })
end

function M.setup(opts) end

return M
