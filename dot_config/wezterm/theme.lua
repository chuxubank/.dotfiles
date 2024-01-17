local wezterm = require 'wezterm'

function get_appearance()
  if wezterm.gui then
    return wezterm.gui.get_appearance()
  end
  return 'Dark'
end

local dark = {"Gruvbox Dark (Gogh)"}

local light = {"EverforestLight (Gogh)"}

local index = math.random(#dark)

function scheme_for_appearance(appearance)
  if appearance:find 'Dark' then
    return dark[index]
  else
    return light[index]
  end
end

return {
  color_scheme = scheme_for_appearance(get_appearance())
}
