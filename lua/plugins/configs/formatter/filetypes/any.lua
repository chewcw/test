local M = {}

local defaults = require("plugins.configs.formatter.defaults")
local util = require("plugins.configs.formatter.util")

M.remove_trailing_whitespace = util.withl(defaults.sed, "[ \t]*$")

return M
