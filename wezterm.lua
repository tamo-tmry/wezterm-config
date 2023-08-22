local wezterm = require 'wezterm';
local act = wezterm.action

return {
  font = wezterm.font('Cica'),
  use_ime = true,
  font_size = 24.0,
  color_scheme = 'OneHalfDark',
  hide_tab_bar_if_only_one_tab = true,
  adjust_window_size_when_changing_font_size = false,
  window_background_opacity = 0.8,
  keys = {
    {
      key = 'v',
      mods = 'SUPER|SHIFT',
      action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' },
    },
    {
      key = 's',
      mods = 'SUPER|SHIFT',
      action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
    },
    {
      key = 'w',
      mods = 'CMD',
      action = wezterm.action.CloseCurrentPane { confirm = true },
    },
    -- activate pane selection mode with the default alphabet (labels are "a", "s", "d", "f" and so on)
    { key = '8', mods = 'CTRL', action = act.PaneSelect },
    -- activate pane selection mode with numeric labels
    {
      key = '9',
      mods = 'CTRL',
      action = act.PaneSelect {
        alphabet = '1234567890',
      },
    },
    -- show the pane selection mode, but have it swap the active and selected panes
    {
      key = '0',
      mods = 'CTRL',
      action = act.PaneSelect {
        mode = 'SwapWithActive',
      },
    },
    {
      key = 'z',
      mods = 'SUPER|SHIFT',
      action = wezterm.action.TogglePaneZoomState,
    },
  }
}

