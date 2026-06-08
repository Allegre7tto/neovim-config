return {
  {
    "Bekaboo/dropbar.nvim",
    opts = {
      bar = {
        padding = { left = 2, right = 2 },
      },
      icons = {
        ui = {
          bar = {
            separator = "  ",
          },
        },
      },
      menu = {
        win_configs = {
          border = "single",
        },
      },
    },
    config = function(_, opts)
      require("dropbar").setup(opts)

      local function fix_hl()
        local winbar = vim.api.nvim_get_hl(0, { name = "WinBar" })
        local winbarnc = vim.api.nvim_get_hl(0, { name = "WinBarNC" })
        vim.api.nvim_set_hl(0, "WinBar", { fg = winbar.fg, bg = "#282727" })
        vim.api.nvim_set_hl(0, "WinBarNC", { fg = winbarnc.fg, bg = "#282727" })

        vim.api.nvim_set_hl(0, "DropBarMenuNormalFloat", { bg = "none" })
        vim.api.nvim_set_hl(0, "DropBarMenuFloatBorder", { link = "FloatBorder" })
        vim.api.nvim_set_hl(0, "DropBarCurrentContext", { link = "Visual" })
        vim.api.nvim_set_hl(0, "DropBarHover", { bg = "none" })
        vim.api.nvim_set_hl(0, "DropBarIconUISeparator", { link = "Comment" })
      end

      fix_hl()

      vim.api.nvim_create_autocmd("ColorScheme", {
        callback = fix_hl,
      })
    end,
  },
}
