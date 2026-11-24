require("mini.icons").setup()
require("mini.files").setup({
	windows = {
		preview = true,
		width_focus = 30,
		width_preview = 45,
	},
})

vim.api.nvim_create_autocmd("User", {
	pattern = "MiniFilesBufferCreate",
	callback = function(args)
		vim.keymap.set("n", "<CR>", function()
			MiniFiles.go_in({ close_on_file = true })
		end, { buffer = args.data.buf_id, desc = "Open file / enter directory" })
	end,
})
