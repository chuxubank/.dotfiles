local wezterm = require 'wezterm'

function get_appearance()
  if wezterm.gui then
    return wezterm.gui.get_appearance()
  end
  return 'Dark'
end

function scheme_for_appearance(appearance)
  if appearance:find 'Dark' then
    return 'Gruvbox Dark (Gogh)'
  else
    return 'Gruvbox (Gogh)'
  end
end

return {
  color_scheme = scheme_for_appearance(get_appearance()),
}
