-- Colorcodes to be used for highlight groups

-- local blend = function(fg_hex, bg_hex, alpha)
--   local fg_r = tonumber(fg_hex:sub(2, 3), 16)
--   local fg_g = tonumber(fg_hex:sub(4, 5), 16)
--   local fg_b = tonumber(fg_hex:sub(6, 7), 16)
--   local bg_r = tonumber(bg_hex:sub(2, 3), 16)
--   local bg_g = tonumber(bg_hex:sub(4, 5), 16)
--   local bg_b = tonumber(bg_hex:sub(6, 7), 16)
--   local r = math.floor(fg_r * alpha + bg_r * (1 - alpha) + 0.5)
--   local g = math.floor(fg_g * alpha + bg_g * (1 - alpha) + 0.5)
--   local b = math.floor(fg_b * alpha + bg_b * (1 - alpha) + 0.5)
--   return string.format("#%02x%02x%02x", r, g, b)
-- end
-- print(blend("", "#151515", 0.2))

return {
  bg = "#151515",
  fg = "#cccccc",

  black_one = "#101010",
  black_two = "#1c1c1c",
  black_three = "#282828",
  gray_one = "#333333",
  gray_two = "#606060",
  white_one = "#aaaaaa",
  white_two = "#888888",

  gold_yellow = "#e1b655",
  olive_green = "#9aae6b",
  moss_green = "#7c9081",
  shipcove_blue = "#8197bf",
  perano_blue = "#b0d0f0",
  dove_blue = "#a9b1d6",
  lavender_purple = "#b6a6ff",

  bad = "#e94430",
  neutral = "#e09121",
  good = "#b4cf69",

  -- The following background colors are generated from a blend function based on the foreground color
  -- contrasted by the `bg` background color
  bad_tint = "#3f1e1a", -- alpha 0.2
  neutral_tint = "#3e2e17", -- alpha 0.2
  good_tint = "#353a26", -- alpha 0.2
  shipcove_blue_tint = "#5b6a84", -- alpha 0.5
}
