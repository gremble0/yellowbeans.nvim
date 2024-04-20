local p = require("yellowbeans.palette")

-- Theme with contrast colors on foreground for important sections
-- and the same background color for all sections
return {
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
    a = { fg = p.gray_two, bg = p.black_two },
    b = { fg = p.gray_two, bg = p.black_two },
    c = { fg = p.gray_two, bg = p.black_two },
  },
}
