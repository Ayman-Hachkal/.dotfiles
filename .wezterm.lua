local wezterm = require 'wezterm'

return {
  font_size = 20,
	window_padding = {
		left = 20,
		right = 20,
		top = 20,
		bottom = 20,
	},
  window_decorations = "RESIZE|MACOS_FORCE_DISABLE_SHADOW",
	window_background_opacity = 0.85,
	enable_tab_bar = false,
	font = wezterm.font 'MAPLE MONO NF',
	color_scheme = "Catppuccin Mocha", -- or Macchiato, Frappe, Latte
  front_end = "WebGpu"
}
