local M = {}

local util = require "plugins.configs.formatter.util"
local defaults = require "plugins.configs.formatter.defaults"

M.latexindent = util.copyf(defaults.latexindent)

return M
