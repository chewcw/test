local M = {}

local defaults = require "plugins.configs.formatter.defaults"
local util = require "plugins.configs.formatter.util"

M.alejandra = util.copyf(defaults.alejandra)
M.nixfmt = util.copyf(defaults.nixfmt)
M.nixpkgs_fmt = util.copyf(defaults.nixpkgs_fmt)

return M
