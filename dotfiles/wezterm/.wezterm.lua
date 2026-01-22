local wezterm = require 'wezterm'

local config = wezterm.config_builder()
config.font = "JetBrains Mono"
config.window_decorations = "NONE"
config.hide_tab_bar_if_only_one_tab = true

return config
