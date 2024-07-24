-- themeswitcher.lua

local themes = { "tokyonight", "everforest", "catppuccin" }
local current_index = 1

local function switch_theme(theme_name)
  vim.cmd("colorscheme " .. theme_name)
end

local function toggle_theme()
  current_index = current_index + 1
  if current_index > #themes then
    current_index = 1
  end
  switch_theme(themes[current_index])
end

-- Export functions
return {
  switch_theme = switch_theme,
  toggle_theme = toggle_theme,
}
