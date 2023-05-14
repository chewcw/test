---@type ChadrcConfig
local M = {}

M.ui = {
	theme = "radium",
	theme_toggle = { "radium", "one_light" },

	hl_override = {
		Comment = {
			italic = true,
		},
		CursorLine = {
			bg = "black2",
		},
    Folded = {
      bg = "black2",
      fg = "light_grey",
    },
		St_InsertMode = {
			bg = "purple",
			fg = "black",
		},
		St_VisualMode = {
			bg = "teal",
			fg = "black",
		},
		St_NormalMode = {
			bg = "statusline_bg",
			fg = "white",
		},
		St_TerminalMode = {
			bg = "purple",
			fg = "black",
		},
		St_NTerminalMode = {
			bg = "statusline_bg",
			fg = "white",
		},
		St_ReplaceMode = {
      bg = "orange",
      fg = "black",
    },
	},

	hl_add = {
		-- NvimTreeOpenedFolderName = { fg = "green", bold = true },
	},
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require("custom.mappings")

return M
