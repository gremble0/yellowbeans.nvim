--[[
This file defines styles that can be `require()`d by other programs also 
outside of the theme itself. For example I would recommend using the border
field in your configs of other plugins so that the background colors dont 
blend in weirdly.
--]]
local M = {}

M.palette = {
  bg = "#151515",
  fg = "#cccccc",

  black_one = "#101010",
  black_two = "#191919",
  black_three = "#282828",
  white_one = "#aaaaaa",
  gray_one = "#333333",
  gray_two = "#606060",

  gold_yellow = "#e1b655",
  koromiko_yellow = "#ffb964",
  olive_green = "#9aae6b",
  sienna_orange = "#cf6a4c",
  morningglory_blue = "#8fbfdc",
  shipcove_blue = "#8197bf",
  perano_blue = "#b0d0f0",
  hoki_blue = "#668799",
  purple_one = "#b6a6ff",
  wewak_pink = "#f0a0c0",

  bad = "#d22b2b",
  neutral = "#ffa500",
  good = "#60a840",
}

M.border = {
  { "┌", "VertSplit" },
  { "─", "VertSplit" },
  { "┐", "VertSplit" },
  { "│", "VertSplit" },
  { "┘", "VertSplit" },
  { "─", "VertSplit" },
  { "└", "VertSplit" },
  { "│", "VertSplit" }
}

return M
