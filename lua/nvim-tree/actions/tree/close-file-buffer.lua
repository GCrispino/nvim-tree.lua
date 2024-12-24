local M = {}

--- TODO: Add description
---@param opts ApiTreeCloseFileBufferOpts|nil|string legacy -> opts.path
function M.fn(opts)
  -- legacy arguments
  if type(opts) == "string" then
    opts = {
      path = opts,
    }
  end
  opts = opts or {}

  vim.cmd({ cmd = "bdelete", args = { opts.path } })
end

function M.setup(opts)
  M.config = opts or {}
end

return M
