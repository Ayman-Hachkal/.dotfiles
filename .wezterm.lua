local wezterm = require 'wezterm'

return {
  font_size = 15,
	window_padding = {
		left = 0,
		right = 0,
		top = 0,
		bottom = 0,
	},
  window_decorations = "NONE",
	window_background_opacity = 0.80,
	enable_tab_bar = false,
	font = wezterm.font 'MAPLE MONO NF',
	color_scheme = "Catppuccin Mocha", -- or Macchiato, Frappe, Latte
}
