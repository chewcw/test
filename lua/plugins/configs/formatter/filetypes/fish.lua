local M = {}

local defaults = require "plugins.configs.formatter.defaults"
local util = require "plugins.configs.formatter.util"

M.fishindent = util.copyf(defaults.fishindent)

return M
