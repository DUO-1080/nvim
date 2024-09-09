return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    enable_diagnostics = true,
    default_component_configs = {
      git_status = {
        symbols = {
          added = "󰬈",
          modified = "󰬔",
          deleted = "󰬋",
          renamed = "󰬙",
          untracked = "󰎔",
          ignored = "󰬐",
          unstaged = "󰬜",
          staged = "󰬚",
          conflict = "󰬊",
        },
      },
    },
    filesystem = {
      filtered_items = {
        visible = false,
        show_hidden_count = true,
        hide_dotfiles = false,
        hide_gitignored = false,
        hide_by_name = {
          -- '.git',
          ".DS_Store",
          -- 'thumbs.db',
        },
        never_show = {},
      },
    },
  },
}
