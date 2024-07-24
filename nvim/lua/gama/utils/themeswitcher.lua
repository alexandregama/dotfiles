-- themeswitcher.lua

local current_theme = "everforest"

local function switch_theme(theme_name)
  current_theme = theme_name
  vim.cmd("colorscheme " .. theme_name)
end

local function toggle_theme()
  if current_theme == "tokyonight" then
    switch_theme("everforest")
  else
    switch_theme("tokyonight")
  end
end

-- Export functions
return {
  switch_theme = switch_theme,
  toggle_theme = toggle_theme,
}
