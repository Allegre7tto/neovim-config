return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, { "c", "cpp", "cmake" })
      opts.highlight = opts.highlight or {}
      opts.highlight.enable = true
      -- Keep Vim regex highlights in cpp as a fallback when treesitter parser is missing
      opts.highlight.additional_vim_regex_highlighting = opts.highlight.additional_vim_regex_highlighting or {}
      if type(opts.highlight.additional_vim_regex_highlighting) == "table" then
        vim.list_extend(opts.highlight.additional_vim_regex_highlighting, { "cpp" })
      end
      vim.g.cpp_highlight_standard_library = 1
    end,
  },
}
