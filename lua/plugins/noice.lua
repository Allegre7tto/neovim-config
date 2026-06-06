return {
  {
    "folke/noice.nvim",
    opts = {
      views = {
        cmdline_popup = {
          border = {
            style = "rounded",
          },
        },
      },
    },
    config = function(_, opts)
      require("noice").setup(opts)

      local function fix_hl()
        vim.api.nvim_set_hl(0, "NoiceCmdlinePopup", { link = "Normal" })
        vim.api.nvim_set_hl(0, "NoiceCmdlinePopupBorder", { link = "FloatBorder" })
        vim.api.nvim_set_hl(0, "NoiceCmdlinePopupBorderCmdline", { link = "FloatBorder" })
        vim.api.nvim_set_hl(0, "NoiceCmdlinePopupBorderSearch", { link = "FloatBorder" })
        vim.api.nvim_set_hl(0, "NoiceCmdlinePopupBorderHelp", { link = "FloatBorder" })
        vim.api.nvim_set_hl(0, "NoiceCmdlinePopupBorderLua", { link = "FloatBorder" })
        vim.api.nvim_set_hl(0, "NoiceCmdlinePopupBorderFilter", { link = "FloatBorder" })
        local icon_fg = vim.api.nvim_get_hl(0, { name = "DiagnosticSignInfo" }).fg
        vim.api.nvim_set_hl(0, "NoiceCmdlineIcon", { fg = icon_fg, bg = "none" })
        vim.api.nvim_set_hl(0, "NoiceCmdlinePopupTitle", { link = "FloatTitle" })

        vim.api.nvim_set_hl(0, "NoicePopupmenu", { link = "Normal" })
        vim.api.nvim_set_hl(0, "NoicePopupmenuBorder", { link = "FloatBorder" })
        vim.api.nvim_set_hl(0, "NoicePopupmenuSelected", { link = "CursorLine" })
        vim.api.nvim_set_hl(0, "NoicePopupmenuMatch", { link = "Special" })

        vim.api.nvim_set_hl(0, "BlinkCmpMenu", { link = "Normal" })
        vim.api.nvim_set_hl(0, "BlinkCmpMenuBorder", { link = "FloatBorder" })
        vim.api.nvim_set_hl(0, "BlinkCmpMenuSelection", { link = "CursorLine" })
        vim.api.nvim_set_hl(0, "BlinkCmpDoc", { link = "Normal" })
        vim.api.nvim_set_hl(0, "BlinkCmpDocBorder", { link = "FloatBorder" })
        vim.api.nvim_set_hl(0, "BlinkCmpDocCursorLine", { link = "CursorLine" })
        vim.api.nvim_set_hl(0, "BlinkCmpSignatureHelp", { link = "Normal" })
        vim.api.nvim_set_hl(0, "BlinkCmpSignatureHelpBorder", { link = "FloatBorder" })

        vim.api.nvim_set_hl(0, "NoiceConfirm", { link = "Normal" })
        vim.api.nvim_set_hl(0, "NoiceConfirmBorder", { link = "FloatBorder" })
      end

      fix_hl()

      vim.api.nvim_create_autocmd("ColorScheme", {
        callback = fix_hl,
      })
    end,
  },
}
