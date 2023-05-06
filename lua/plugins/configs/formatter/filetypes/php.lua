local M = {}

local defaults = require "plugins.configs.formatter.defaults"
local util = require "plugins.configs.formatter.util"

M.phpcbf = util.copyf(defaults.phpcbf)
M.php_cs_fixer = util.copyf(defaults.php_cs_fixer)

return M
