-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- config.colors = {
--	foreground = "#ffffff", -- "#CBE0F0",
-- 	background = "#000000", --"#011423",
-- 	-- cursor_bg = "#47FF9C",
-- 	-- cursor_border = "#47FF9C",
-- 	-- cursor_fg = "#011423",
-- 	-- selection_bg = "#033259",
-- 	-- selection_fg = "#CBE0F0",
-- 	ansi = { "#214969", "#E52E2E", "#44FFB1", "#FFE073", "#0FC5ED", "#a277ff", "#24EAF7", "#24EAF7" },
-- 	brights = { "#214969", "#E52E2E", "#44FFB1", "#FFE073", "#A277FF", "#a277ff", "#24EAF7", "#24EAF7" },
-- }

-- config.font = wezterm.font ""
-- config.font = wezterm.font_with_fallback("Fira Code")
config.font_size = 14
-- Set the initial number of columns (width)
config.initial_cols = 120

-- Set the initial number of rows (height)
config.initial_rows = 40
config.enable_tab_bar = false
config.color_scheme = "Tokyo Night"
config.window_background_opacity = 0.8
config.macos_window_background_blur = 6
config.window_decorations = "RESIZE" --"INTEGRATED_BUTTONS|RESIZE"
--config.integrated_title_buttons = { "Close", "Maximize", "Hide" }
config.keys = {
	{
		key = "n",
		mods = "SHIFT|CTRL",
		action = wezterm.action.ToggleFullScreen,
	},
	--  { key = 'k', mods = 'SHIFT', action = wezterm.action.ScrollByPage(-1) },
	--   { key = 'j', mods = 'SHIFT', action = wezterm.action.ScrollByPage(1) }
}
-- and finally, return the configuration to wezterm
return config
