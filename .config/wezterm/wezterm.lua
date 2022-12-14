local wezterm = require 'wezterm'
local act = wezterm.action

return {
  font = wezterm.font("Comic Code Ligatures", {weight="Regular", stretch="Normal", style="Normal"}),
  color_scheme = "ayu",
  enable_tab_bar = false,
  default_cursor_style = 'SteadyUnderline',
  window_padding = {
    left = 20,
    right = 20,
    top = 20,
    bottom = 20,
  },
  exit_behavior = 'CloseOnCleanExit',
  mouse_bindings = {
      -- Scrolling up while holding CTRL increases the font size
      {
        event = { Down = { streak = 1, button = { WheelUp = 1 } } },
        mods = 'CTRL',
        action = act.IncreaseFontSize,
      },

      -- Scrolling down while holding CTRL decreases the font size
      {
        event = { Down = { streak = 1, button = { WheelDown = 1 } } },
        mods = 'CTRL',
        action = act.DecreaseFontSize,
      },
   },

}
