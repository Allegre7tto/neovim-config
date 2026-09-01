require("catppuccin").setup({
	flavour = "auto",
	background = { dark = "frappe", light = "latte" },
	transparent_background = true,
})

local function floats()
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" })
end

vim.api.nvim_create_autocmd("OptionSet", {
	pattern = "background",
	callback = function()
		vim.cmd.colorscheme "catppuccin-nvim"
	end,
})
vim.api.nvim_create_autocmd("ColorScheme", { callback = floats })

vim.cmd.colorscheme "catppuccin-nvim"
floats()
