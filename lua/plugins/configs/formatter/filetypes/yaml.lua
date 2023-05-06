local M = {}

local defaults = require "plugins.configs.formatter.defaults"
local util = require "plugins.configs.formatter.util"

M.prettier = util.withl(defaults.prettier, "yaml")

M.prettierd = util.copyf(defaults.prettierd)

function M.pyaml()
  return {
    exe = "python3",
    args = { "-m", "pyaml" },
    stdin = true,
  }
end

function M.yamlfmt()
  return {
    exe = "yamlfmt",
    args = { "-in" },
    stdin = true,
  }
end

return M
