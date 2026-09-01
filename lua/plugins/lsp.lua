vim.lsp.config("ty", {
	cmd = { vim.fn.expand("~/.local/bin/ty"), "server" },
	filetypes = { "python" },
	root_markers = { "pyproject.toml", "requirements.txt", "setup.py", ".git" },
})

vim.lsp.enable({
	"lua_ls",
	"clangd",
	"ts_ls",
	"rust_analyzer",
	"tailwindcss",
	"ty",
})

vim.diagnostic.config({
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