local hi = function(hl_group, colors)
  vim.api.nvim_set_hl(0, hl_group, colors)
end

local M = {}

M.palette = {
  bg = "#151515",
  fg = "#cccccc",

  black_one = "#101010",
  black_two = "#191919",
  black_three = "#1c1c1c",
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

local p = M.palette

M.style = function()
  -- Main highlight groups
  hi("Normal", { fg = p.fg, bg = p.bg })
  hi("Cursor", { fg = p.bg, bg = p.fg })

  -- Background things
  hi("SignColumn", { fg = p.fg, bg = p.bg })

  hi("ColorColumn", { bg = p.black_two })
  hi("CursorColumn", { link = "ColorColumn" })
  hi("CursorLine", { link = "ColorColumn" })
  hi("VertSplit", { fg = p.black_three })

  hi("StatusLine", { fg = p.fg, bg = p.black_two })
  hi("StatusLineNC", { fg = p.white_one, bg = p.black_two })

  hi("Visual", { bg = p.gray_one })

  -- Text
  hi("Comment", { fg = p.gray_two })
  hi("LineNr", { link = "Comment" })
  hi("SpecialKey", { link = "Comment" })
  hi("CursorLineNr", { link = "Normal" })
  hi("MatchParen", { fg = p.good })
  hi("Title", { fg = p.good })

  hi("Bold", { bold = true })
  hi("Italic", { italic = true })
  hi("Underlined", { underline = true })

  hi("Todo", { fg = p.olive_green })

  -- Menus
  hi("Pmenu", { fg = p.fg, bg = p.black_three })
  hi("PmenuSel", { fg = p.bg, bg = p.gold_yellow })
  hi("PmenuSbar", { fg = p.gold_yellow, bg = p.bg })
  hi("PmenuThumb", { fg = p.gray_one, bg = p.gray_one })
  hi("Search", { fg = p.bg, bg = p.gold_yellow })

  -- Diff mode highlight groups (used as links as well)
  hi("DiffAdd", { fg = p.good })
  hi("DiffChange", { fg = p.neutral })
  hi("DiffDelete", { fg = p.bad })
  hi("DiffText", { italic = true })

  -- Bad things
  hi("Error", { fg = p.bad })
  hi("ErrorMsg", { link = "Error" })

  -- Other
  hi("Directory", { fg = p.gold_yellow })

  -- Preferred groups for syntax highlighting (other groups also refer to these)
  hi("Constant", { fg = p.sienna_orange })
  hi("Character", { link = "Constant" })
  hi("Number", { link = "Constant" })
  hi("Boolean", { link = "Constant" })
  hi("Float", { link = "Constant" })

  hi("String", { fg = p.olive_green })
  hi("StringDelimiter", { link = "String" })

  hi("Identifier", { fg = p.purple_one })

  hi("Function", { fg = p.gold_yellow })

  hi("Statement", { fg = p.perano_blue })
  hi("Conditional", { link = "Statement" })
  hi("Repeat", { link = "Statement" })
  hi("Label", { link = "Statement" })
  hi("Keyword", { link = "Statement" })

  hi("Operator", { fg = p.morningglory_blue })

  hi("PreProc", { fg = p.gold_yellow })
  hi("Include", { link = "PreProc" })
  hi("Macro", { link = "PreProc" })
  hi("PreCondit", { link = "PreProc" })

  hi("Type", { fg = p.koromiko_yellow })
  hi("StorageClass", { link = "Type" })
  hi("Typedef", { link = "Type" })

  hi("Structure", { fg = p.shipcove_blue })

  hi("Delimiter", { fg = p.hoki_blue })

  -- Plugin settings
  -- GitSigns
  hi("GitSignsAdd", { fg = p.good })
  hi("GitSignsChange", { fg = p.neutral })
  hi("GitSignsDelete", { fg = p.bad })

  -- Fidget
  hi("FidgetTask", { link = "Comment" })
  hi("FidgetTitle", { fg = p.gold_yellow })

  -- Treesitter
  hi("TSNamespace", { fg = p.wewak_pink })
  hi("TSVariable", { link = "Identifier" }) -- Normal
  hi("TSDelimiter", { fg = p.hoki_blue })
  hi("TSEmphasis", { italic = true })
  hi("TSUnderline", { underline = true })
  hi("TSStrike", { strikethrough = true })
  hi("TSURI", { fg = p.morningglory_blue, underline = true })

  -- Lualine
  hi("lualine_a_visual", { bg = p.morningglory_blue })

  -- Telescope
  hi("TelescopeBorder", { link = "VertSplit" })
  hi("TelescopePromptTitle", { fg = p.fg })
  hi("TelescopePromptCounter", { link = "Comment" })
  hi("TelescopePreviewTitle", { link = "TelescopePromptTitle" })
  hi("TelescopeResultsTitle", { link = "TelescopePromptTitle" })
  hi("TelescopeSelection", { fg = p.gold_yellow })

  -- Nvim-cmp
  hi("CmpItemAbbrDeprecated", { fg = p.gray_two, bg = "NONE", strikethrough = true })
  hi("CmpItemAbbrMatch", { fg = p.gold_yellow, bg = "NONE", bold = true })
  hi("CmpItemAbbrMatchFuzzy", { fg = p.gold_yellow, bg = "NONE", bold = true })

  hi("CmpItemKindVariable", { link = "Identifier" })
  hi("CmpItemKindField", { link = "CmpItemKindVariable" })
  hi("CmpItemKindProperty", { link = "CmpItemKindVariable" })
  hi("CmpItemKindEvent", { link = "CmpItemKindVariable" })

  hi("CmpItemKindKeyword", { link = "Keyword" })
  hi("CmpItemKindText", { link = "CmpItemKindText" })
  hi("CmpItemKindEnum", { link = "CmpItemKindText" })

  hi("CmpItemKindConstant", { link = "Constant" })
  hi("CmpItemKindConstructor", { link = "CmpItemKindConstant" })
  hi("CmpItemKindReference", { link = "CmpItemKindConstant" })
  hi("CmpItemKindEnumMember", { link = "CmpItemKindConstant" })

  hi("CmpItemKindStruct", { link = "Structure" })
  hi("CmpItemKindClass", { link = "Structure" })
  hi("CmpItemKindModule", { link = "Structure" })
  hi("CmpItemKindInterface", { link = "Structure" })
  hi("CmpItemKindColor", { link = "Structure" })

  hi("CmpItemKindOperator", { link = "Operator" })

  hi("CmpItemKindUnit", { link = "String" })
  hi("CmpItemKindSnippet", { link = "CmpItemKindUnit" })

  hi("CmpItemKindFile", { link = "Directory" })
  hi("CmpItemKindFolder", { link = "Directory" })

  hi("CmpItemKindFunction", { link = "Function" })
  hi("CmpItemKindTypeParameter", { link = "CmpItemKindFunction" })
  hi("CmpItemKindMethod", { link = "CmpItemKindFunction" })
  hi("CmpItemKindValue", { link = "CmpItemKindFunction" })

  -- Indent-blankline
  hi("IndentBlanklineChar", { fg = p.gray_one, nocombine = true })

  -- Nvimtree
  hi("NvimTreeWindowPicker", { fg = p.gold_yellow, bg = p.black_two })
  hi("NvimTreeWinSeparator", { fg = p.black_one, bg = p.black_one })
  hi("NvimTreeNormal", { bg = p.black_one })
end

return M
