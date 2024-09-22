return {
  "nvim-neo-tree/neo-tree.nvim",
  init = function()
    -- 自定义 Git 状态的高亮颜色
    vim.api.nvim_set_hl(0, "NeoTreeGitAdded", { fg = "#117554", bg = "NONE", bold = true }) -- 绿色
    vim.api.nvim_set_hl(0, "NeoTreeGitModified", { fg = "#ff9900", bg = "NONE", bold = true }) -- 橙色
    vim.api.nvim_set_hl(0, "NeoTreeGitDeleted", { fg = "#A04747", bg = "NONE", bold = true }) -- 红色
    vim.api.nvim_set_hl(0, "NeoTreeGitRenamed", { fg = "#ffa500", bg = "NONE", bold = true }) -- 橙色
    vim.api.nvim_set_hl(0, "NeoTreeGitUntracked", { fg = "#117554", bg = "NONE", bold = true }) -- 青色
    vim.api.nvim_set_hl(0, "NeoTreeGitIgnored", { fg = "#808080", bg = "NONE", bold = true }) -- 灰色
  end,

  opts = {
    enable_diagnostics = true,
    default_component_configs = {
      git_status = {
        symbols = {
          added = "󰬈",
          modified = "󰬔",
          deleted = "󰬋",
          renamed = "󰬙",
          untracked = "󰬟",
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
      git = {
        enable = true,
      },
      renderer = {
        highlight_git = true,
        icons = {
          show = {
            git = true,
          },
        },
        directory = {
          {
            "icon",
            default = true,
          },
          {
            "name",
            zindex = 1,
          },
          {
            "git_status", -- 添加 git 状态显示
            zindex = 0,
          },
        },
        file = {
          { "icon" },
          { "name", use_git_status_colors = true },
          { "diagnostics" },
          { "git_status", highlight = "NeoTreeDimText" },
        },
      },
    },
  },
}
