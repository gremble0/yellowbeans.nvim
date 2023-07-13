local hi = function(hl_group, colors)
  vim.api.nvim_set_hl(0, hl_group, colors)
end

local M = {}

local bg = "#151515"
local fg = "#cccccc"
local black_one = "#101010"
local black_two = "#191919"
local black_three = "#1c1c1c"
local white_one = "#aaaaaa"
local gray_one = "#333333"
local gray_two = "#606060"

local gold_yellow = "#e1b655"
local koromiko_yellow = "#ffb964"
local olive_green = "#9aae6b"
local sienna_orange = "#cf6a4c"
local morningglory_blue = "#8fbfdc"
local shipcove_blue = "#8197bf"
local perano_blue = "#b0d0f0"
local hoki_blue = "#668799"
local purple_one = "#b6a6ff"
local wewak_pink = "#f0a0c0"

local bad = "#d22b2b"
local neutral = "#ffa500"
local good = "#60a840"

M.style = function()
  -- Main highlight groups
  hi("Normal", { fg = fg, bg = bg })
  hi("Cursor", { fg = bg, bg = fg })

  -- Background things
  hi("SignColumn", { fg = fg, bg = bg })

  hi("ColorColumn", { bg = black_two })
  hi("CursorColumn", { link = "ColorColumn" })
  hi("CursorLine", { link = "ColorColumn" })
  hi("VertSplit", { fg = black_three })

  hi("StatusLine", { fg = fg, bg = black_two })
  hi("StatusLineNC", { fg = white_one, bg = black_two })

  hi("Visual", { bg = gray_one })

  -- Text
  hi("Comment", { fg = gray_two })
  hi("LineNr", { link = "Comment" })
  hi("CursorLineNr", { link = "Normal" })
  hi("MatchParen", { fg = good })
  hi("Title", { fg = good })

  hi("Bold", { bold = true })
  hi("Italic", { italic = true })
  hi("Underlined", { underline = true })

  hi("Todo", { fg = olive_green })

  -- Menus
  hi("Pmenu", { fg = fg, bg = black_three })
  hi("PmenuSel", { fg = bg, bg = gold_yellow })
  hi("PmenuSbar", { fg = gold_yellow, bg = bg })
  hi("PmenuThumb", { fg = gray_one, bg = gray_one })
  hi("Search", { fg = bg, bg = gold_yellow })

  -- Diff mode highlight groups (used as links as well)
  hi("DiffAdd", { fg = good })
  hi("DiffChange", { fg = neutral })
  hi("DiffDelete", { fg = bad })
  hi("DiffText", { italic = true })

  -- Bad things
  hi("Error", { fg = bad })
  hi("ErrorMsg", { link = "Error" })

  -- Other
  hi("Directory", { fg = gold_yellow })

  -- Preferred groups for syntax highlighting (other groups also refer to these)
  hi("Constant", { fg = sienna_orange })
  hi("Character", { link = "Constant" })
  hi("Number", { link = "Constant" })
  hi("Boolean", { link = "Constant" })
  hi("Float", { link = "Constant" })

  hi("String", { fg = olive_green })
  hi("StringDelimiter", { link = "String" })

  hi("Identifier", { fg = purple_one })

  hi("Function", { fg = gold_yellow })

  hi("Statement", { fg = perano_blue })
  hi("Conditional", { link = "Statement" })
  hi("Repeat", { link = "Statement" })
  hi("Label", { link = "Statement" })

  hi("Operator", { fg = morningglory_blue })

  hi("PreProc", { fg = gold_yellow })
  hi("Include", { link = "PreProc" })
  hi("Macro", { link = "PreProc" })
  hi("PreCondit", { link = "PreProc" })

  hi("Type", { fg = koromiko_yellow })
  hi("StorageClass", { link = "Type" })
  hi("Typedef", { link = "Type" })

  hi("Structure", { fg = shipcove_blue })

  hi("Delimiter", { fg = hoki_blue })

  -- Plugin settings
  -- GitSigns
  hi("GitSignsAdd", { fg = good })
  hi("GitSignsChange", { fg = neutral })
  hi("GitSignsDelete", { fg = bad })
  -- Fidget
  hi("FidgetTask", { link = "Comment" })
  hi("FidgetTitle", { fg = gold_yellow })

  -- Treesitter
  hi("TSNamespace", { fg = wewak_pink })
  hi("TSVariable", { link = "Normal" })
  hi("TSDelimiter", { fg = hoki_blue })
  hi("TSEmphasis", { italic = true })
  hi("TSUnderline", { underline = true })
  hi("TSStrike", { strikethrough = true })
  hi("TSURI", { fg = morningglory_blue, underline = true })

  -- Lualine
  hi("lualine_a_visual", { bg = morningglory_blue })

  -- Telescope
  hi("TelescopeBorder", { fg = black_three })
  hi("TelescopePromptTitle", { fg = fg })
  hi("TelescopePromptCounter", { link = "Comment" })
  hi("TelescopePreviewTitle", { link = "TelescopePromptTitle" })
  hi("TelescopeResultsTitle", { link = "TelescopePromptTitle" })
  hi("TelescopeSelection", { fg = gold_yellow })

  -- Nvim-cmp
  hi("CmpItemAbbrDeprecated", { fg = "#7E8294", bg = "NONE", strikethrough = true })
  hi("CmpItemAbbrMatch", { fg = gold_yellow, bg = "NONE", bold = true })
  hi("CmpItemAbbrMatchFuzzy", { fg = gold_yellow, bg = "NONE", bold = true })

  hi("CmpItemKindField", { fg = "#c5b5ee" })
  hi("CmpItemKindProperty", { fg = "#c5b5ee" })
  hi("CmpItemKindEvent", { fg = "#c5b5ee" })
  hi("CmpItemKindVariable", { fg = "#c5b5ee" })

  hi("CmpItemKindText", { fg = "#b2d1f0" })
  hi("CmpItemKindEnum", { fg = "#b2d1f0" })
  hi("CmpItemKindKeyword", { fg = "#b2d1f0" })

  hi("CmpItemKindConstant", { fg = sienna_orange })
  hi("CmpItemKindConstructor", { fg = sienna_orange })
  hi("CmpItemKindReference", { fg = sienna_orange })
  hi("CmpItemKindEnumMember", { fg = sienna_orange })

  hi("CmpItemKindStruct", { fg = shipcove_blue })
  hi("CmpItemKindClass", { fg = shipcove_blue })
  hi("CmpItemKindModule", { fg = shipcove_blue })
  hi("CmpItemKindInterface", { fg = shipcove_blue })
  hi("CmpItemKindColor", { fg = shipcove_blue })

  hi("CmpItemKindOperator", { fg = morningglory_blue })

  hi("CmpItemKindUnit", { fg = olive_green })
  hi("CmpItemKindSnippet", { fg = olive_green })

  hi("CmpItemKindFile", { fg = gold_yellow })
  hi("CmpItemKindFolder", { fg = gold_yellow })

  hi("CmpItemKindFunction", { fg = gold_yellow })
  hi("CmpItemKindTypeParameter", { fg = gold_yellow })
  hi("CmpItemKindMethod", { fg = gold_yellow })
  hi("CmpItemKindValue", { fg = gold_yellow })

  -- Indent-blankline
  hi("IndentBlanklineChar", { fg = gray_one, nocombine = true })

  -- Nvimtree
  hi("NvimTreeWindowPicker", { fg = gold_yellow, bg = black_two })
  hi("NvimTreeWinSeparator", { fg = black_one, bg = black_one })
  hi("NvimTreeNormal", { bg = black_one})
end

return M
