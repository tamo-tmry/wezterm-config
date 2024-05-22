local wezterm = require 'wezterm';
local act = wezterm.action

return {
  font = wezterm.font {
    family = 'Cica',
    weight = 'Bold',
    style = 'Italic'
  },
  use_ime = true,
  font_size = 18.0,
  -- color_scheme = 'OneHalfDark',
  color_scheme = 'Gruvbox Dark',
  hide_tab_bar_if_only_one_tab = true,
  adjust_window_size_when_changing_font_size = false,
  background = {
    {
      source = {
        File = '/Image/Path',
      },
      hsb =  { brightness = 0.04 },
      opacity = 1.0,
      height = 'Contain',
      width = '100%',
      repeat_x = 'NoRepeat',
      horizontal_align = 'Center',
    }
  },
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

