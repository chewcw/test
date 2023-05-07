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
				preview_width = 0.55,
				results_width = 0.8,
			},
			vertical = {
				mirror = false,
			},
			width = 0.87,
			height = 0.90,
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
			n = {
        ["q"] = require("telescope.actions").close,
        ["n"] = require("telescope").extensions.file_browser.actions.create,
        ["h"] = require("telescope").extensions.file_browser.actions.goto_parent_dir,
        ["l"] = require("telescope").extensions.file_browser.actions.open,
        ["y"] = require("telescope").extensions.file_browser.actions.copy,
        ["x"] = require("telescope").extensions.file_browser.actions.remove,
        ["m"] = require("telescope").extensions.file_browser.actions.move,
        ["."] = require("telescope").extensions.file_browser.actions.toggle_hidden,
        ["i"] = function()
          vim.cmd('startinsert')
        end
      },
		},
	},

	extensions_list = { "themes", "terms", "file_browser" },

	extensions = {
		file_browser = {
			theme = "dropdown",
			hijack_netrw = true,
			hidden = true,
			initial_mode = "normal",
			preview = true,
		},
	},
}

return options
