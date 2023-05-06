local M = {}

local defaults = require "plugins.configs.formatter.defaults"
local util = require "plugins.configs.formatter.util"

M.ocamlformat = util.copyf(defaults.ocamlformat)

return M
