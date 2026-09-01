require("blink.cmp").setup({
	keymap = { preset = 'super-tab' },
	appearance = {
		nerd_font_variant = 'mono'
	},
	completion = {
		documentation = {
			auto_show = true,
			window = {
				border = 'rounded',
				winblend = 30,
			},
		},
		menu = {
			border = 'rounded',
			winblend = 30,
		},
	},
	sources = {
		default = { 'lsp', 'snippets' },
	},
	signature = {
		enabled = true,
		window = {
			border = 'rounded',
			winblend = 30,
		},
	},
})