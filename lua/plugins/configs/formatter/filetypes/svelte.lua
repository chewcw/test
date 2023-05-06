local M = {}

local defaults = require "plugins.configs.formatter.defaults"
local util = require "plugins.configs.formatter.util"

M.prettier = util.copyf(defaults.prettier)

return M
