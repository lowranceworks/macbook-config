local wezterm = require("wezterm")
local os = require("os")

local function get_home_dir()
	return os.getenv("HOME")
end

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- general settings
config.font_size = 16

config.adjust_window_size_when_changing_font_size = false
config.debug_key_events = false
config.enable_tab_bar = false
config.native_macos_fullscreen_mode = false
config.window_close_confirmation = "NeverPrompt"
config.window_decorations = "RESIZE" -- hides title bar buttons

-- appearance settings
config.color_scheme = "Dracula (Official)"
config.font = wezterm.font("MesloLGS NF")
-- config.window_background_image = get_home_dir() .. "/.config/wezterm/wallpapers/space-moon.jpg"
config.colors = {
	background = "rgba(40, 42, 54, 1.0)", -- fully opaque
}
-- config.window_background_opacity = 0.8, -- Adjust as needed for background opacity

return config
