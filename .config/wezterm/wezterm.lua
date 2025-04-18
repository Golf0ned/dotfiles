local wezterm = require "wezterm"

local config = wezterm.config_builder()

config.color_scheme = "Catppuccin Mocha"

-- config.font = wezterm.font("UbuntuMono Nerd Font")
-- config.font_size = 14
config.harfbuzz_features = { "calt=0", "clig=0", "liga=0" }

config.initial_cols = 150
config.initial_rows = 50

config.audible_bell = "Disabled"

config.default_domain = "WSL:Ubuntu"

return config
