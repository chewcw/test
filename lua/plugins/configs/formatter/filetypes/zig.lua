local M = {}

local defaults = require "plugins.configs.formatter.defaults"
local util = require "plugins.configs.formatter.util"

M.zigfmt = util.copyf(defaults.zigfmt)

return M
