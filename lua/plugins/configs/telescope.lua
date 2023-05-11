-- reference https://github.com/nvim-telescope/telescope.nvim/issues/2201#issuecomment-1284691502
local ts_select_dir_for_grep_or_find_files = function(grep)
	return function(_)
		local action_state = require("telescope.actions.state")
		local fb = require("telescope").extensions.file_browser
		local grep_or_find_files = require("telescope.builtin").live_grep
		if not grep then
			grep_or_find_files = require("telescope.builtin").find_files
		end
		local current_line = action_state.get_current_line()

		fb.file_browser({
			files = false,
			depth = true,
			attach_mappings = function(_)
				require("telescope.actions").select_default:replace(function()
					local entry_path = action_state.get_selected_entry().Path
					local dir = entry_path:is_dir() and entry_path or entry_path:parent()
					local relative = dir:make_relative(vim.fn.getcwd())
					local absolute = dir:absolute()
					grep_or_find_files({
						results_title = relative .. "/",
						cwd = absolute,
						default_text = current_line,
					})
				end)
				return true
			end,
		})
	end
end

local options = {
	defaults = {
		vimgrep_arguments = {
			"rg",
			"-L",
			"--color=never",
			"--no-heading",
			"--with-filename",
			"--line-number",
			"--column",
			"--smart-case",
		},
		prompt_prefix = "   ",
		selection_caret = "  ",
		entry_prefix = "  ",
		initial_mode = "normal",
		selection_strategy = "reset",
		sorting_strategy = "ascending",
		layout_strategy = "horizontal",
		layout_config = {
			horizontal = {
				prompt_position = "top",
				preview_width = 0.45,
				results_width = 0.85,
			},
			vertical = {
				mirror = false,
			},
			width = 0.90,
			height = 0.95,
			preview_cutoff = 120,
		},
		file_sorter = require("telescope.sorters").get_fuzzy_file,
		file_ignore_patterns = { "node_modules" },
		generic_sorter = require("telescope.sorters").get_generic_fuzzy_sorter,
		path_display = { "truncate" },
		winblend = 0,
		border = {},
		borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
		color_devicons = true,
		set_env = { ["COLORTERM"] = "truecolor" }, -- default = nil,
		file_previewer = require("telescope.previewers").vim_buffer_cat.new,
		grep_previewer = require("telescope.previewers").vim_buffer_vimgrep.new,
		qflist_previewer = require("telescope.previewers").vim_buffer_qflist.new,
		-- Developer configurations: Not meant for general override
		buffer_previewer_maker = require("telescope.previewers").buffer_previewer_maker,
		mappings = {
			i = {
				["<C-j>"] = require("telescope.actions").move_selection_next,
				["<C-k>"] = require("telescope.actions").move_selection_previous,
				["<C-\\>"] = require("telescope.actions").select_vertical,
				["<C-_>"] = require("telescope.actions").select_horizontal,
			},
			n = {
				["<C-j>"] = require("telescope.actions").move_selection_next,
				["<C-k>"] = require("telescope.actions").move_selection_previous,
				["<C-\\>"] = require("telescope.actions").select_vertical,
				["<C-_>"] = require("telescope.actions").select_horizontal,
				["i"] = function()
					vim.cmd("startinsert")
				end,
				["/"] = function()
					vim.cmd("startinsert")
				end,
			},
		},
	},

	extensions_list = { "themes", "file_browser", "workspaces" },

	extensions = {
		file_browser = {
			path = "%:p:h",
			cwd = vim.fn.expand("%:p:h"),
			theme = "dropdown",
			hijack_netrw = true,
			hidden = true,
			initial_mode = "normal",
			preview = true,
			layout_strategy = "horizontal",
			layout_config = {
				horizontal = {
					prompt_position = "top",
					preview_width = 0.45,
					results_width = 0.85,
				},
				vertical = {
					mirror = false,
				},
				width = 0.90,
				height = 0.95,
				preview_cutoff = 120,
			},
			mappings = {
				n = {
					["q"] = require("telescope.actions").close,
					["t"] = require("telescope").extensions.file_browser.actions.change_cwd,
					["T"] = require("telescope").extensions.file_browser.actions.goto_cwd,
					["n"] = require("telescope").extensions.file_browser.actions.create_from_prompt,
					["h"] = require("telescope").extensions.file_browser.actions.goto_parent_dir,
					["y"] = require("telescope").extensions.file_browser.actions.copy,
					["x"] = require("telescope").extensions.file_browser.actions.remove,
					["m"] = require("telescope").extensions.file_browser.actions.move,
					["r"] = require("telescope").extensions.file_browser.actions.rename,
					["."] = require("telescope").extensions.file_browser.actions.toggle_hidden,
				},
			},
		},
	},

	pickers = {
		live_grep = {
			mappings = {
				i = {
					["<C-f>"] = ts_select_dir_for_grep_or_find_files(true),
				},
				n = {
					["<C-f>"] = ts_select_dir_for_grep_or_find_files(true),
				},
			},
		},
		find_files = {
			mappings = {
				i = {
					["<C-f>"] = ts_select_dir_for_grep_or_find_files(false),
				},
				n = {
					["<C-f>"] = ts_select_dir_for_grep_or_find_files(false),
				},
			},
		},
	},
}

return options
