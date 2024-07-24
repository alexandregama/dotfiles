-- lua/gama/plugins/colorscheme.lua

return {
  {
    "folke/tokyonight.nvim",
    version = false,
    lazy = false,
    priority = 1000,
    config = function()
      require("tokyonight").setup({
        style = "night",
        on_colors = function(colors)
          colors.bg = "#011628"
          colors.bg_dark = "#011423"
          colors.bg_float = "#011423"
          colors.bg_highlight = "#143652"
          colors.bg_popup = "#011423"
          colors.bg_search = "#0A64AC"
          colors.bg_sidebar = "#011423"
          colors.bg_statusline = "#011423"
          colors.bg_visual = "#275378"
          colors.border = "#547998"
          colors.fg = "#CBE0F0"
          colors.fg_dark = "#B4D0E9"
          colors.fg_float = "#CBE0F0"
          colors.fg_gutter = "#627E97"
          colors.fg_sidebar = "#B4D0E9"
        end,
      })
    end,
  },
  {
    "neanias/everforest-nvim",
    version = false,
    lazy = false,
    priority = 1000,
    config = function()
      require("everforest").setup({
        -- Your config here
      })
    end,
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
  },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    priority = 1000,
  },
  {
    "craftzdog/solarized-osaka.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  {
    "savq/melange-nvim",
    lazy = false,
    priority = 1000,
  },
  {
    "xero/miasma.nvim",
    lazy = false,
    priority = 1000,
  },
  {
    "sho-87/kanagawa-paper.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
}
