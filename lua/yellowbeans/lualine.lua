local p = require("yellowbeans.styles").palette

return {
  normal = {
    a = { fg = p.bg, bg = p.gold_yellow, gui = "bold" },
    b = { fg = p.fg, bg = p.black_four },
    c = { fg = p.white_one, bg = p.black_two },
  },
  insert = {
    a = { fg = p.bg, bg = p.olive_green, gui = "bold" }
  },
  visual = {
    a = { fg = p.bg, bg = p.shipcove_blue, gui = "bold" }
  },
  replace = {
    a = { fg = p.bg, bg = p.moss_green, gui = "bold" }
  },
  inactive = {
    a = { fg = p.fg, bg = p.black_four, gui = "bold" },
    b = { fg = p.white_one, bg = p.black_three },
    c = { fg = p.white_one, bg = p.black_two },
  },
}
