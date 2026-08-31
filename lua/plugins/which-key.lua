require("which-key").setup({
	preset = "helix",
})

require("which-key").add({
	{ "<leader>d", vim.diagnostic.open_float, desc = "Show diagnostics", icon = "󰒡" },
	{ "<leader>f", require("telescope.builtin").find_files, desc = "Find files", icon = "" },
	{ "<leader>F", require("telescope.builtin").live_grep, desc = "Live grep", icon = "" },
	{ "<leader>r", require("telescope.builtin").oldfiles, desc = "Recent files", icon = "" },
	{ "<leader>t", vim.cmd.ToggleTerm, desc = "Toggle terminal", icon = "" },
})