--[[
This file defines styles that can be `require()`d by other programs also 
outside of the theme itself. For example you could use the M.border field
so in plugins that use floating windows
--]]

local M = {}

-- Colorcodes to be used for highlight groups
M.palette = {
  bg = "#151515",
  fg = "#cccccc",

  black_one = "#101010",
  black_two = "#191919",
  black_three = "#202020",
  black_four = "#282828",
  white_one = "#aaaaaa",
  gray_one = "#333333",
  gray_two = "#606060",

  gold_yellow = "#e1b655",
  olive_green = "#9aae6b",
  moss_green = "#7c9081",
  morningglory_blue = "#8fbfdc",
  shipcove_blue = "#8197bf",
  perano_blue = "#b0d0f0",
  hoki_blue = "#668799",
  purple_one = "#b6a6ff",
  wewak_pink = "#f0a0c0",

  bad = "#f22b2b",
  bad_bg = "#503030",
  neutral = "#ffa500",
  neutral_bg = "#6B572A",
  good = "#b3e27c",
  good_bg = "#2e3127",
}

-- Table of tables containing special symbols used as a border with the
-- corresponding highlight group used for this symbol. This format works for
-- lspconfig.ui.windows
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

-- Defined abbrevation for ease of typing
local p = M.palette

M.hl_groups = {
  -- Main highlight groups
  { "Normal", { fg = p.fg, bg = p.bg } },
  { "Conceal", { link = "Normal" } },
  { "NonText", { fg = p.fg } },

  { "Cursor", { fg = p.bg, bg = p.fg } },
  { "TermCursor", { link = "Cursor" } },

  -- Background things
  { "SignColumn", { fg = p.fg, bg = p.bg } },

  { "ColorColumn", { bg = p.black_two } },
  { "CursorColumn", { link = "ColorColumn" } },
  { "CursorLine", { link = "ColorColumn" } },
  { "VertSplit", { fg = p.black_four } },

  { "StatusLine", { link = "ColorColumn" } },
  { "StatusLineNC", { fg = p.white_one, bg = p.black_two } },

  { "Visual", { bg = p.gray_one } },

  -- Diff mode
  { "Folded", { link = "Comment" } },
  { "FoldColumn", { link = "Folded" } },
  { "DiffAdd", { bg = p.good_bg } },
  { "DiffDelete", { bg = p.bad_bg } },

  -- Tabline
  { "TabLineSel", { fg = p.gold_yellow, bold = true } },
  { "Tabline", { bg = p.gray_one } },
  { "TablineFill", { bg = p.bg } },

  -- Text
  { "Comment", { fg = p.gray_two } },
  { "LineNr", { link = "Comment" } },
  { "Special", { fg = p.shipcove_blue } },
  { "SpecialKey", { link = "Comment" } },
  { "CursorLineNr", { link = "Normal" } },
  { "MatchParen", { fg = p.gold_yellow } },
  { "Title", { fg = p.good } },

  { "Bold", { bold = true } },
  { "Italic", { italic = true } },
  { "Underlined", { underline = true } },

  { "Todo", { fg = p.olive_green } },

  -- Menus
  { "Pmenu", { fg = p.fg, bg = p.bg } },
  { "PmenuBg", { link = "VertSplit" } },
  { "PmenuSel", { fg = p.bg, bg = p.gold_yellow } },
  { "PmenuSbar", { fg = p.gold_yellow, bg = p.bg } },
  { "PmenuThumb", { fg = p.gray_one, bg = p.gray_one } },

  { "Search", { fg = p.bg, bg = p.gold_yellow } },
  { "IncSearch", { link = "Search" } },

  -- Bad things
  { "Error", { fg = p.bad } },
  { "ErrorMsg", { link = "Error" } },

  -- Other
  { "Directory", { fg = p.shipcove_blue } },

  -- Preferred groups for syntax highlighting (other groups also refer to these },
  { "Constant", { fg = p.moss_green } },
  { "Character", { link = "Constant" } },
  { "Number", { link = "Constant" } },
  { "Boolean", { link = "Constant" } },
  { "Float", { link = "Constant" } },

  { "String", { fg = p.olive_green } },
  { "StringDelimiter", { link = "String" } },

  { "Identifier", { fg = p.purple_one } },
  { "Typedef", { link = "Identifier" } },

  { "Function", { fg = p.perano_blue } },

  { "Statement", { fg = p.gold_yellow, bold = true } },
  { "Conditional", { link = "Statement" } },
  { "Repeat", { link = "Statement" } },
  { "Label", { link = "Statement" } },
  { "Keyword", { link = "Statement" } },
  { "Operator", { link = "Statement" } },

  { "PreProc", { fg = p.moss_green } },
  { "Include", { link = "PreProc" } },
  { "Macro", { link = "PreProc" } },
  { "PreCondit", { link = "PreProc" } },

  { "Type", { fg = p.gold_yellow } },
  { "StorageClass", { link = "Type" } },

  { "Structure", { fg = p.shipcove_blue } },

  { "Delimiter", { fg = p.hoki_blue } },

  --[[ Plugin settings ]]
  -- GitSigns
  { "GitSignsAdd", { fg = p.good } },
  { "GitSignsChange", { fg = p.neutral } },
  { "GitSignsDelete", { fg = p.bad } },

  -- Fidget
  { "FidgetTask", { link = "Comment" } },
  { "FidgetTitle", { fg = p.gold_yellow } },

  -- Treesitter
  { "TSNamespace", { fg = p.wewak_pink } },
  { "TSDelimiter", { fg = p.hoki_blue } },

  { "TSStringRegex", { fg = p.moss_green } },
  { "TSStringEscape", { fg = p.moss_green } },

  { "TSURI", { fg = p.morningglory_blue, underline = true } },
  { "TSEmphasis", { italic = true } },
  { "TSUnderline", { underline = true } },
  { "TSStrike", { strikethrough = true } },

  { "TSError", { link = "Error" } },

  -- Telescope
  { "TelescopeBorder", { link = "VertSplit" } },
  { "TelescopePromptTitle", { fg = p.fg } },
  { "TelescopePromptCounter", { link = "Comment" } },
  { "TelescopePreviewTitle", { link = "TelescopePromptTitle" } },
  { "TelescopeResultsTitle", { link = "TelescopePromptTitle" } },
  { "TelescopeSelection", { fg = p.gold_yellow } },

  -- Nvim-cmp
  { "CmpItemAbbrDeprecated", { fg = p.gray_two, bg = "NONE", strikethrough = true } },
  { "CmpItemAbbrMatch", { fg = p.gold_yellow, bg = "NONE", bold = true } },
  { "CmpItemAbbrMatchFuzzy", { fg = p.gold_yellow, bg = "NONE", bold = true } },

  { "CmpItemKindVariable", { link = "Identifier" } },
  { "CmpItemKindField", { link = "CmpItemKindVariable" } },
  { "CmpItemKindProperty", { link = "CmpItemKindVariable" } },
  { "CmpItemKindEvent", { link = "CmpItemKindVariable" } },

  { "CmpItemKindKeyword", { link = "Keyword" } },
  { "CmpItemKindText", { link = "CmpItemKindText" } },
  { "CmpItemKindEnum", { link = "CmpItemKindText" } },

  { "CmpItemKindConstant", { link = "Constant" } },
  { "CmpItemKindConstructor", { link = "CmpItemKindConstant" } },
  { "CmpItemKindReference", { link = "CmpItemKindConstant" } },
  { "CmpItemKindEnumMember", { link = "CmpItemKindConstant" } },

  { "CmpItemKindStruct", { link = "Structure" } },
  { "CmpItemKindClass", { link = "CmpItemKindStruct" } },
  { "CmpItemKindModule", { link = "CmpItemKindStruct" } },
  { "CmpItemKindInterface", { link = "CmpItemKindStruct" } },
  { "CmpItemKindColor", { link = "CmpItemKindStruct" } },

  { "CmpItemKindOperator", { link = "Operator" } },

  { "CmpItemKindUnit", { link = "String" } },
  { "CmpItemKindSnippet", { link = "CmpItemKindUnit" } },

  { "CmpItemKindFolder", { link = "Directory" } },
  { "CmpItemKindFile", { link = "CmpItemKindFolder" } },

  { "CmpItemKindFunction", { link = "Function" } },
  { "CmpItemKindTypeParameter", { link = "CmpItemKindFunction" } },
  { "CmpItemKindMethod", { link = "CmpItemKindFunction" } },
  { "CmpItemKindValue", { link = "CmpItemKindFunction" } },

  -- Indent-blankline
  { "IndentBlanklineChar", { fg = p.black_four, nocombine = true } },

  -- Nvimtree
  { "NvimTreeWindowPicker", { fg = p.gold_yellow, bg = p.black_two } },
  { "NvimTreeWinSeparator", { fg = p.black_one, bg = p.black_one } },
  { "NvimTreeNormal", { bg = p.black_one } },

  -- Netrw
  { "netrwClassify", { link = "Directory" } },

  -- Neogit
  { "NeogitBranch", { fg = p.moss_green, bold = true } },
  { "NeogitRemote", { fg = p.olive_green, bold = true } },

  { "NeogitSectionHeader", { fg = p.gold_yellow, bold = true } },
  { "NeogitPopupSectionTitle", { link = "NeogitSectionHeader" } },
  { "NeogitPopupOptionKey", { fg = p.moss_green } },
  { "NeogitUnmergedInto", { link = "NeogitSectionHeader" } },

  { "NeogitChangeModified", { fg = p.neutral } },
  { "NeogitChangeAdded", { fg = p.good } },
  { "NeogitChangeRemoved", { fg = p.bad } },

  { "NeogitHunkHeader", { fg = p.white_one, bg = p.gray_one } },
  { "NeogitHunkHeaderHighlight", { bg = p.gray_two } },
}

return M
