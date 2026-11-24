require("which-key").setup({
	preset = "helix",
})

require("which-key").add({
	{ "<leader>d", function() Snacks.picker.diagnostics() end, desc = "Show diagnostics", icon = "󰒡" },
	{ "<leader>f", function() Snacks.picker.files() end, desc = "Find files", icon = "" },
	{ "<leader>F", function() Snacks.picker.grep() end, desc = "Live grep", icon = "" },
	{ "<leader>r", function() Snacks.picker.recent() end, desc = "Recent files", icon = "" },
})