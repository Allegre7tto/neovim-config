local opt = vim.opt
opt.number = true
opt.relativenumber = false
opt.signcolumn = "number"
opt.termguicolors = true
opt.foldmethod = "indent"
opt.foldlevel = 99
opt.foldenable = false
opt.fillchars = { eob = " " }

opt.tabstop         = 4
opt.shiftwidth      = 4

opt.guicursor       = {
	"i:ver25",
	"a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor",
}

vim.pack.add({
	{ src = "https://github.com/catppuccin/nvim", name = "catppuccin" },
	{ src = "https://github.com/nvim-treesitter/nvim-treesitter" },
	{ src = "https://github.com/nvim-telescope/telescope.nvim", version = "master" },
	{ src = "https://github.com/nvim-lua/plenary.nvim" },
	{ src = "https://github.com/neovim/nvim-lspconfig" },
	{ src = "https://github.com/saghen/blink.cmp" },
	{ src = "https://github.com/saghen/blink.lib" },
	{ src = "https://github.com/rafamadriz/friendly-snippets" },
	{ src = "https://github.com/stevearc/conform.nvim" },
	{ src = "https://github.com/windwp/nvim-autopairs" },
	{ src = "https://github.com/nvim-lualine/lualine.nvim" },
	{ src = "https://github.com/folke/noice.nvim" },
	{ src = "https://github.com/MunifTanjim/nui.nvim" },
	{ src = "https://github.com/rcarriga/nvim-notify" },
	{ src = "https://github.com/MeanderingProgrammer/render-markdown.nvim" },
	{ src = "https://github.com/nvim-mini/mini.nvim" },
	{ src = "https://github.com/folke/snacks.nvim" },
	{ src = "https://github.com/folke/which-key.nvim" },
	{ src = "https://github.com/nvim-tree/nvim-web-devicons" },
}, { confirm = false })

require("key-maps")
require("netrw")
require("plugins.theme")
require("plugins.blink")
require("plugins.conform")
require("plugins.lualine")
require("plugins.dashboard")
require("plugins.markdown")
require("plugins.noice")
require("plugins.which-key")
require("plugins.autopair")
require("plugins.lsp")
