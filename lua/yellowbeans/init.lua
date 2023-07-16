---@param hl_group string highlight group to apply the options given in the colors table
---@param colors table<string, any> list of colors, links to other highlight groups or other gui modifiers for the given hl_group. 
--- For more info see `:help nvim_set_hl()`
local hi = function(hl_group, colors)
  vim.api.nvim_set_hl(0, hl_group, colors)
end

local M = {}

local p = require("yellowbeans.styles").palette

M.setup = function()
  -- Main highlight groups
  hi("Normal", { fg = p.fg, bg = p.bg })
  hi("Cursor", { fg = p.bg, bg = p.fg })

  -- Background things
  hi("SignColumn", { fg = p.fg, bg = p.bg })

  hi("ColorColumn", { bg = p.black_two })
  hi("CursorColumn", { link = "ColorColumn" })
  hi("CursorLine", { link = "ColorColumn" })
  hi("VertSplit", { fg = p.black_three })

  hi("StatusLine", { link = "ColorColumn" })
  hi("StatusLineNC", { fg = p.white_one, bg = p.black_two })

  hi("Visual", { bg = p.gray_one })

  -- Text
  hi("Comment", { fg = p.gray_two })
  hi("LineNr", { link = "Comment" })
  hi("Special", { fg = p.shipcove_blue })
  hi("SpecialKey", { link = "Comment" })
  hi("CursorLineNr", { link = "Normal" })
  hi("MatchParen", { fg = p.gold_yellow })
  hi("Title", { fg = p.good })

  hi("Bold", { bold = true })
  hi("Italic", { italic = true })
  hi("Underlined", { underline = true })

  hi("Todo", { fg = p.olive_green })

  -- Menus
  hi("Pmenu", { fg = p.fg, bg = p.bg })
  hi("PmenuBg", { link = "VertSplit" })
  hi("PmenuSel", { fg = p.bg, bg = p.gold_yellow })
  hi("PmenuSbar", { fg = p.gold_yellow, bg = p.bg })
  hi("PmenuThumb", { fg = p.gray_one, bg = p.gray_one })
  hi("Search", { fg = p.bg, bg = p.gold_yellow })

  -- Used by floating windows such as `:LspInfo` and `vim.lsp.buf.hover`
  -- hi("NormalFloat", { bg = p.black_two })

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

  -- [[ Plugin settings ]]
  -- GitSigns
  hi("GitSignsAdd", { fg = p.good })
  hi("GitSignsChange", { fg = p.neutral })
  hi("GitSignsDelete", { fg = p.bad })

  -- Fidget
  hi("FidgetTask", { link = "Comment" })
  hi("FidgetTitle", { fg = p.gold_yellow })

  -- Treesitter
  hi("TSNamespace", { fg = p.wewak_pink })
  hi("TSDelimiter", { fg = p.hoki_blue })

  hi("TSStringRegex", { fg = p.sienna_orange })
  hi("TSStringEscape", { fg = p.sienna_orange })

  hi("TSURI", { fg = p.morningglory_blue, underline = true })
  hi("TSEmphasis", { italic = true })
  hi("TSUnderline", { underline = true })
  hi("TSStrike", { strikethrough = true })

  hi("TSError", { link = "Error" })

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
  hi("IndentBlanklineChar", { fg = p.black_three, nocombine = true })

  -- Nvimtree
  hi("NvimTreeWindowPicker", { fg = p.gold_yellow, bg = p.black_two })
  hi("NvimTreeWinSeparator", { fg = p.black_one, bg = p.black_one })
  hi("NvimTreeNormal", { bg = p.black_one })
end

return M
