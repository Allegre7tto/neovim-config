# Neovim Config

A minimal Neovim configuration powered by the official built-in plugin manager [`vim.pack`](https://neovim.io/doc/user/pack.html#vim.pack) (Nvim 0.12+).

## Highlights

- **`vim.pack`** — official plugin manager, no third-party manager (no lazy.nvim)
- **catppuccin** theme (frappe, transparent background)
- **nvim-treesitter** syntax highlighting
- **blink.cmp** completion (native Rust fuzzy matcher) + friendly-snippets
- **nvim-lspconfig** + `vim.lsp.enable()` for language servers (lua_ls, clangd, ts_ls, rust_analyzer, tailwindcss, pyright)
- **telescope.nvim** find files / live grep / recent files
- **which-key** leader key menu (helix preset)
- **noice.nvim** — cmdline/search popups, notifications
- **conform.nvim** format on save
- **toggleterm.nvim** floating terminal
- **snacks.nvim** dashboard with custom art
- **nvim-autopairs**, **lualine.nvim**, **render-markdown.nvim**

## Keymaps

| Key | Action |
| --- | --- |
| `<Space>d` | Show diagnostics |
| `<Space>f` | Find files |
| `<Space>F` | Live grep |
| `<Space>r` | Recent files |
| `<Space>t` | Toggle terminal |
| `<A-Up>` / `<A-Down>` | Move line up/down |
| `<C-c>` / `<C-x>` (visual) | Copy / cut to system clipboard |
| `<C-/>` | Toggle comment |

## Plugin management

Plugins are declared in [`init.lua`](init.lua) via `vim.pack.add({ ... })`.

```lua
-- Update all plugins
vim.pack.update()

-- List managed plugins
vim.pack.get()
```

Plugin revisions are pinned in `nvim-pack-lock.json` — commit it to share the exact
setup across machines. After `vim.pack.update()`, a native rebuild of blink.cmp is
triggered automatically (see the `PackChanged` hook in `init.lua`).

## Structure

```
init.lua              # options + vim.pack.add() + plugin config loading
lua/key-maps.lua      # core keymaps
lua/plugins/          # per-plugin configuration (plain require + setup)
```