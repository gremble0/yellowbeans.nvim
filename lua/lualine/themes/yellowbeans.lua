local p = require("yellowbeans.palette")

-- Theme with contrast colors on background for important sections
return {
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
    a = { fg = p.gray_two, bg = p.black_two },
    b = { fg = p.gray_two, bg = p.black_two },
    c = { fg = p.gray_two, bg = p.black_two },
  },
}
