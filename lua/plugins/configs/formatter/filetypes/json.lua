local M = {}

local defaults = require "plugins.configs.formatter.defaults"
local util = require "plugins.configs.formatter.util"

M.jsbeautify = util.copyf(defaults.jsbeautify)

M.prettydiff = util.withl(defaults.prettydiff, "javascript")

M.prettier = util.copyf(defaults.prettier)

M.prettierd = util.copyf(defaults.prettierd)

M.denofmt = util.copyf(defaults.denofmt)

function M.jq()
  return {
    exe = "jq",
    args = { "." },
    stdin = true,
  }
end

function M.fixjson()
  return {
    exe = "fixjson",
    args = { "--stdin-filename", util.get_current_buffer_file_name() },
    stdin = true,
    try_node_modules = true,
  }
end

return M
