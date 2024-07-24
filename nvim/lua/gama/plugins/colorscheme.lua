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
  -- Add more themes here...
}

-- return {
--   {
--     "folke/tokyonight.nvim",
--     version = false,
--     lazy = false,
--     priority = 1000, -- make sure to load this before all the other start plugins
--
--     config = function()
--       local bg = "#011628"
--       local bg_dark = "#011423"
--       local bg_highlight = "#143652"
--       local bg_search = "#0A64AC"
--       local bg_visual = "#275378"
--       local fg = "#CBE0F0"
--       local fg_dark = "#B4D0E9"
--       local fg_gutter = "#627E97"
--       local border = "#547998"
--
--       require("tokyonight").setup({
--         style = "night",
--         on_colors = function(colors)
--           colors.bg = bg
--           colors.bg_dark = bg_dark
--           colors.bg_float = bg_dark
--           colors.bg_highlight = bg_highlight
--           colors.bg_popup = bg_dark
--           colors.bg_search = bg_search
--           colors.bg_sidebar = bg_dark
--           colors.bg_statusline = bg_dark
--           colors.bg_visual = bg_visual
--           colors.border = border
--           colors.fg = fg
--           colors.fg_dark = fg_dark
--           colors.fg_float = fg
--           colors.fg_gutter = fg_gutter
--           colors.fg_sidebar = fg_dark
--         end,
--       })
--
--       -- load the colorscheme here
--       vim.cmd([[colorscheme tokyonight]])
--     end,
--   },
--   {
--     "neanias/everforest-nvim",
--     version = false,
--     lazy = false,
--     priority = 1000, -- make sure to load this before all the other start plugins
--     config = function()
--       require("everforest").setup({
--         -- Your config here
--       })
--     end,
--   },
-- }
