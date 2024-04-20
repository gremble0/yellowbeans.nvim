--[[
Applies palette defined in yellowbeans.styles to a format recognized by lualine.
]]

local p = require("yellowbeans.palette")

return {
  -- Theme with contrast colors on background for important sections
  theme1 = {
    normal = {
      a = { fg = p.bg, bg = p.gold_yellow, gui = "bold" },
      b = { fg = p.fg, bg = p.black_four },
      c = { fg = p.white_one, bg = p.black_two },
    },
    insert = {
      a = { fg = p.bg, bg = p.olive_green, gui = "bold" },
    },
    visual = {
      a = { fg = p.bg, bg = p.shipcove_blue, gui = "bold" },
    },
    replace = {
      a = { fg = p.bg, bg = p.moss_green, gui = "bold" },
    },
    command = {
      a = { fg = p.bg, bg = p.lavender_purple, gui = "bold" },
    },
    inactive = {
      a = { fg = p.fg, bg = p.black_four, gui = "bold" },
      b = { fg = p.white_one, bg = p.black_three },
      c = { fg = p.white_one, bg = p.black_two },
    },
  },

  -- Theme with contrast colors on foreground for important sections
  -- and the same background color for all sections
  theme2 = {
    normal = {
      a = { fg = p.gold_yellow, bg = p.black_two, gui = "bold" },
      b = { fg = p.white_one, bg = p.black_two },
      c = { fg = p.white_two, bg = p.black_two },
    },
    insert = {
      a = { fg = p.olive_green, bg = p.black_two, gui = "bold" },
    },
    visual = {
      a = { fg = p.shipcove_blue, bg = p.black_two, gui = "bold" },
    },
    replace = {
      a = { fg = p.moss_green, bg = p.black_two, gui = "bold" },
    },
    command = {
      a = { fg = p.lavender_purple, bg = p.black_two, gui = "bold" },
    },
    inactive = {
      a = { fg = p.fg, bg = p.black_two },
      b = { fg = p.white_one, bg = p.black_two },
      c = { fg = p.white_two, bg = p.black_two },
    },
  },
}
