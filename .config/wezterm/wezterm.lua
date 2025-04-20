local wezterm = require "wezterm"

local config = wezterm.config_builder()

config.color_scheme = "Catppuccin Mocha"

config.harfbuzz_features = { "calt=0", "clig=0", "liga=0" }

config.initial_cols = 150
config.initial_rows = 40
config.window_padding = {
    left = "0.5cell",
    right = "0.5cell",
    top = "0.25cell",
    bottom = "0.25cell",
}
config.window_decorations = "INTEGRATED_BUTTONS|RESIZE"

config.audible_bell = "Disabled"

return config
