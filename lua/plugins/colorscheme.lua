return {
  -- add kanagawa
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      transparent = true,
      overrides = function(colors)
        -- Keep backgrounds nil to reduce redraw flicker when terminal is transparent
        local bg_none = { bg = "none" }
        return {
          Normal = bg_none,
          NormalNC = bg_none,
          NormalFloat = bg_none,
          FloatBorder = bg_none,
          SignColumn = bg_none,
          CursorLine = bg_none,
          CursorLineNr = { bg = "none", fg = colors.palette.dragonPink },
          LineNr = bg_none,
          StatusLine = bg_none,
          StatusLineNC = bg_none,
        }
      end,
    },
    config = function(_, opts)
      require("kanagawa").setup(opts)
      vim.cmd.colorscheme("kanagawa-dragon")
    end,
  },

  -- Configure LazyVim to load kanagawa
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanagawa-dragon",
    },
  },
}
