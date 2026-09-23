vim.lsp.enable({
	"clangd",
})

vim.diagnostic.config({
	virtual_text = {
		prefix = function(_, i, total)
			if i < total then
				return ""
			end
			return string.format("● [%d]", total)
		end,
		spacing = 2,
	},
	float = {
		border = "rounded",
	},
	signs = {
		text = {
			[vim.diagnostic.severity.ERROR] = "󰅚",
			[vim.diagnostic.severity.WARN] = "󰀪",
			[vim.diagnostic.severity.INFO] = "󰋼",
			[vim.diagnostic.severity.HINT] = "󰌶",
		},
		texthl = {
			[vim.diagnostic.severity.ERROR] = "DiagnosticSignError",
			[vim.diagnostic.severity.WARN] = "DiagnosticSignWarn",
			[vim.diagnostic.severity.INFO] = "DiagnosticSignInfo",
			[vim.diagnostic.severity.HINT] = "DiagnosticSignHint",
		},
	},
})
