require("notify").setup({
	background_colour = "#313445",
})

require("noice").setup({
	lsp = {
		override = {
			["vim.lsp.util.convert_input_to_markdown_lines"] = true,
			["vim.lsp.util.stylize_markdown"] = true,
			["cmp.entry.get_documentation"] = true,
		},
		signature = { enabled = false },
	},
	cmdline = {
		format = {
			cmdline = { icon = "" },
			search_down = {
				view = "cmdline_popup",
				opts = {
					position = { row = "90%", col = "50%" },
				},
			},
			search_up = {
				view = "cmdline_popup",
				opts = {
					position = { row = "90%", col = "50%" },
				},
			},
		},
	},
	views = {
		cmdline_popup = {
			border = {
				style = "rounded",
			},
		},
	},
	presets = {
		command_palette = true,
		long_message_to_split = true,
		inc_rename = false,
		lsp_doc_border = false,
	},
})