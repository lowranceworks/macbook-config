local wezterm = require("wezterm")
local os = require("os")

local function get_home_dir()
	return os.getenv("HOME")
end

return {
	-- General settings
	adjust_window_size_when_changing_font_size = false,
	debug_key_events = false,
	enable_tab_bar = false,
	native_macos_fullscreen_mode = false,
	window_close_confirmation = "NeverPrompt",
	window_decorations = "RESIZE", -- hides title bar buttons

	-- Appearance settings
	color_scheme = "Dracula (Official)",
	font = wezterm.font("MesloLGS NF"),
	font_size = 16,

	-- Background image
	-- window_background_image = get_home_dir() .. "/.config/wezterm/wallpapers/space-moon.jpg",

	-- Background color with an opaque overlay (adjust the alpha value)
	colors = {
		background = "rgba(41, 42, 54, 1.0)", -- Semi-transparent dark overlay
	},
}
