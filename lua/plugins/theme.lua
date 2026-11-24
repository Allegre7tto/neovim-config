require("catppuccin").setup({
	flavour = "auto",
	background = { dark = "frappe", light = "latte" },
	transparent_background = true,
	float = {
		transparent = true,
		solid = false,
	},
})

vim.api.nvim_create_autocmd("OptionSet", {
	pattern = "background",
	callback = function()
		vim.cmd.colorscheme "catppuccin-nvim"
	end,
})

vim.cmd.colorscheme "catppuccin-nvim"
