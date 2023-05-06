local M = {}

local defaults = require "plugins.configs.formatter.defaults"
local util = require "plugins.configs.formatter.util"

M.uncrustify = util.withl(defaults.uncrustify, "C")

M.clangformat = util.copyf(defaults.clangformat)

M.astyle = util.withl(defaults.astyle, "c")

return M
