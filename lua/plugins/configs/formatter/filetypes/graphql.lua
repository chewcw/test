local M = {}

local defaults = require "plugins.configs.formatter.defaults"
local util = require "plugins.configs.formatter.util"

M.prettier = util.copyf(defaults.prettier)

M.prettierd = util.copyf(defaults.prettierd)

return M
