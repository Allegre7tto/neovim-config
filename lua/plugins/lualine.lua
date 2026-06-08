return {
  {
    "nvim-lualine/lualine.nvim",
    opts = function()
      local colors = {
        bg = "#181616",
        fg = "#c5c9c5",
        muted = "#727169",
        black = "#0d0c0c",
        red = "#c4746e",
        orange = "#b98d7b",
        yellow = "#c4b28a",
        green = "#8a9a7b",
        aqua = "#8ea4a2",
        blue = "#7e9cd8",
        purple = "#a292a3",
      }

      local theme = {
        normal = {
          a = { fg = colors.black, bg = colors.blue, gui = "bold" },
          b = { fg = colors.black, bg = colors.aqua },
          c = { fg = colors.fg, bg = colors.bg },
        },
        insert = {
          a = { fg = colors.black, bg = colors.green, gui = "bold" },
          b = { fg = colors.black, bg = colors.aqua },
          c = { fg = colors.fg, bg = colors.bg },
        },
        visual = {
          a = { fg = colors.black, bg = colors.purple, gui = "bold" },
          b = { fg = colors.black, bg = colors.aqua },
          c = { fg = colors.fg, bg = colors.bg },
        },
        replace = {
          a = { fg = colors.black, bg = colors.red, gui = "bold" },
          b = { fg = colors.black, bg = colors.orange },
          c = { fg = colors.fg, bg = colors.bg },
        },
        command = {
          a = { fg = colors.black, bg = colors.yellow, gui = "bold" },
          b = { fg = colors.black, bg = colors.aqua },
          c = { fg = colors.fg, bg = colors.bg },
        },
        inactive = {
          a = { fg = colors.muted, bg = colors.bg },
          b = { fg = colors.muted, bg = colors.bg },
          c = { fg = colors.muted, bg = colors.bg },
        },
      }

      return {
        options = {
          globalstatus = true,
          theme = theme,
          component_separators = { left = "", right = "" },
          section_separators = { left = "", right = "" },
          disabled_filetypes = {
            statusline = { "dashboard", "alpha", "ministarter", "snacks_dashboard" },
          },
        },
        sections = {
          lualine_a = { "mode" },
          lualine_b = { "branch", "diff", "diagnostics" },
          lualine_c = {},
          lualine_x = { "encoding" },
          lualine_y = { "progress" },
          lualine_z = { "location" },
        },
        extensions = { "neo-tree", "lazy", "fzf" },
      }
    end,
  },
}
