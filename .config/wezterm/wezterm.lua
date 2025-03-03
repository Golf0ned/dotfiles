local wezterm = require "wezterm"

local config = wezterm.config_builder()

config.color_scheme = "Catppuccin Mocha"
-- config.font = wezterm.font("UbuntuMono Nerd Font")
-- config.font_size = 14
config.initial_cols = 150
config.initial_rows = 50

config.default_domain = "WSL:Ubuntu"

return config
