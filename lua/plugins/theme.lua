require("catppuccin").setup({
	flavour = "frappe",
	transparent_background = true,
})

local function transparent_floats()
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" })
end

vim.api.nvim_create_autocmd("ColorScheme", { callback = transparent_floats })
transparent_floats()