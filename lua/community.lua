-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.cpp" },
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.zig" },
  { import = "astrocommunity.pack.python" },
  { import = "astrocommunity.recipes.heirline-nvchad-statusline" },
  { import = "astrocommunity.recipes.heirline-vscode-winbar" },
  { import = "astrocommunity.search.nvim-hlslens" },
  { import = "astrocommunity.git.git-blame-nvim" },
  { import = "astrocommunity.scrolling.mini-animate" },
  { import = "astrocommunity.register.nvim-neoclip-lua" },
  { import = "astrocommunity.diagnostics.trouble-nvim" },
  { import = "astrocommunity.snippet.nvim-snippets" },
  { import = "astrocommunity.media.codesnap-nvim" },
  {
    "mistricky/codesnap.nvim",
    build = "make",
    opts = {
      save_path = "~/Pictures/Screenshots/",
      code_font_family = "JetBrainsMono Nerd Font",
      bg_color = "#a8b0d5",
    },
  },
}
