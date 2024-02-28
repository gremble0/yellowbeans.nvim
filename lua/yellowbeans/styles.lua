local M = {}

-- Defined abbrevation for ease of typing
local p = require("yellowbeans.palette")

M.hl_groups = {
  -- Main highlight groups
  ["Normal"] = { fg = p.fg, bg = p.bg },
  ["Conceal"] = { link = "Normal" },
  ["NonText"] = { fg = p.gray_two },

  ["Cursor"] = { fg = p.bg, bg = p.fg },
  ["TermCursor"] = { link = "Cursor" },

  -- Background things
  ["SignColumn"] = { fg = p.fg, bg = p.bg },

  ["ColorColumn"] = { bg = p.black_two },
  ["CursorColumn"] = { link = "ColorColumn" },
  ["CursorLine"] = { link = "ColorColumn" },
  ["VertSplit"] = { fg = p.black_four },

  ["StatusLine"] = { link = "ColorColumn" },
  ["StatusLineNC"] = { fg = p.white_one, bg = p.black_two },

  ["Visual"] = { bg = p.gray_one },

  -- Diff mode
  ["Folded"] = { link = "Comment" },
  ["FoldColumn"] = { link = "Folded" },
  ["DiffAdd"] = { bg = p.good_bg },
  ["DiffDelete"] = { bg = p.bad_bg },

  -- Tabline
  ["TabLineSel"] = { fg = p.gold_yellow, bold = true },
  ["Tabline"] = { bg = p.gray_one },
  ["TablineFill"] = { bg = p.bg },

  -- Text
  ["Comment"] = { fg = p.gray_two, italic = true },
  ["LineNr"] = { link = "Comment" },
  ["Special"] = { fg = p.shipcove_blue },
  ["SpecialKey"] = { link = "Comment" },
  ["CursorLineNr"] = { link = "Normal" },
  ["MatchParen"] = { fg = p.gold_yellow, bold = true },
  ["Title"] = { fg = p.shipcove_blue },

  ["Bold"] = { bold = true },
  ["Italic"] = { italic = true },
  ["Underlined"] = { underline = true },

  ["Todo"] = { fg = p.olive_green },

  -- Menus
  ["Pmenu"] = { fg = p.fg, bg = p.bg },
  ["PmenuBg"] = { link = "VertSplit" },
  ["PmenuSel"] = { fg = p.bg, bg = p.gold_yellow },
  ["PmenuSbar"] = { fg = p.gold_yellow, bg = p.bg },
  ["PmenuThumb"] = { bg = p.gray_two },

  ["Search"] = { bg = p.gray_one },
  ["IncSearch"] = { link = "Search" },

  -- Bad things
  ["Error"] = { fg = p.bad },
  ["ErrorMsg"] = { link = "Error" },

  -- Other
  ["Directory"] = { fg = p.shipcove_blue },

  -- Preferred groups for syntax highlighting (other groups also refer to these,
  ["Constant"] = { fg = p.moss_green },
  ["Character"] = { link = "Constant" },
  ["Number"] = { link = "Constant" },
  ["Boolean"] = { link = "Constant" },
  ["Float"] = { link = "Constant" },

  ["String"] = { fg = p.olive_green },
  ["StringDelimiter"] = { link = "String" },

  ["Identifier"] = { fg = p.purple_one },
  ["Typedef"] = { link = "Identifier" },

  ["Function"] = { fg = p.perano_blue },

  ["Statement"] = { fg = p.gold_yellow, bold = true },
  ["Conditional"] = { link = "Statement" },
  ["Repeat"] = { link = "Statement" },
  ["Label"] = { link = "Statement" },
  ["Keyword"] = { link = "Statement" },
  ["Operator"] = { link = "Statement" },

  ["PreProc"] = { fg = p.moss_green },
  ["Include"] = { link = "PreProc" },
  ["Macro"] = { link = "PreProc" },
  ["PreCondit"] = { link = "PreProc" },

  ["Type"] = { fg = p.shipcove_blue },
  ["StorageClass"] = { link = "Type" },
  ["Structure"] = { fg = p.some_blue },

  ["Delimiter"] = { fg = p.hoki_blue },

  -- Other syntax highlighting groups
  ["@variable.builtin"] = { link = "Statement" },

  ["@lsp.type.keyword"] = { link = "Statement" },

  ["@type.qualifier"] = { link = "Statement" },

  ["@property"] = { fg = p.dove_blue },
  ["@lsp.type.property"] = { link = "@property" },

  ["@string.documentation"] = { link = "Comment" },

  -- LspInfo
  ["LspInfoBorder"] = { link = "VertSplit" },

  -- Diagnostics
  ["DiagnosticError"] = { fg = p.bad },
  ["DiagnosticWarn"] = { fg = p.neutral },
  ["DiagnosticInfo"] = { fg = p.perano_blue },
  ["DiagnosticUnderlineWarn"] = { undercurl = true },
  ["DiagnosticUnderlineError"] = { undercurl = true },
  ["DiagnosticUnderlineInfo"] = { undercurl = true },
  ["DiagnosticUnderlineHint"] = { undercurl = true },
  ["DiagnosticUnderlineOk"] = { undercurl = true },

  --[[ Plugin settings ]]
  -- GitSigns
  ["GitSignsAdd"] = { fg = p.good },
  ["GitSignsChange"] = { fg = p.neutral },
  ["GitSignsDelete"] = { fg = p.bad },

  -- Fidget
  ["FidgetTask"] = { link = "Comment" },
  ["FidgetTitle"] = { fg = p.gold_yellow },

  -- Treesitter
  ["TSNamespace"] = { fg = p.wewak_pink },
  ["TSDelimiter"] = { link = "Delimiter" },

  ["TSStringRegex"] = { fg = p.moss_green },
  ["TSStringEscape"] = { fg = p.moss_green },

  ["TSURI"] = { fg = p.morningglory_blue, underline = true },
  ["TSEmphasis"] = { italic = true },
  ["TSUnderline"] = { underline = true },
  ["TSStrike"] = { strikethrough = true },

  ["TSError"] = { link = "Error" },

  -- Telescope
  ["TelescopeBorder"] = { link = "VertSplit" },
  ["TelescopePromptTitle"] = { fg = p.fg },
  ["TelescopePromptCounter"] = { link = "Comment" },
  ["TelescopePreviewTitle"] = { link = "TelescopePromptTitle" },
  ["TelescopeResultsTitle"] = { link = "TelescopePromptTitle" },
  ["TelescopeMatching"] = { bold = true, fg = p.shipcove_blue },
  ["TelescopeSelection"] = { bg = p.gray_one },

  -- Nvim-cmp
  ["CmpItemAbbrDeprecated"] = { fg = p.gray_two, bg = "NONE", strikethrough = true },
  ["CmpItemAbbrMatch"] = { fg = p.shipcove_blue, bg = "NONE", bold = true },
  ["CmpItemAbbrMatchFuzzy"] = { fg = p.shipcove_blue, bg = "NONE", bold = true },

  ["CmpItemKindVariable"] = { link = "Identifier" },
  ["CmpItemKindField"] = { link = "CmpItemKindVariable" },
  ["CmpItemKindProperty"] = { link = "CmpItemKindVariable" },
  ["CmpItemKindEvent"] = { link = "CmpItemKindVariable" },

  ["CmpItemKindKeyword"] = { link = "Keyword" },
  ["CmpItemKindText"] = { link = "CmpItemKindText" },
  ["CmpItemKindEnum"] = { link = "CmpItemKindText" },

  ["CmpItemKindConstant"] = { link = "Constant" },
  ["CmpItemKindConstructor"] = { link = "CmpItemKindConstant" },
  ["CmpItemKindReference"] = { link = "CmpItemKindConstant" },
  ["CmpItemKindEnumMember"] = { link = "CmpItemKindConstant" },

  ["CmpItemKindStruct"] = { link = "Structure" },
  ["CmpItemKindClass"] = { link = "CmpItemKindStruct" },
  ["CmpItemKindModule"] = { link = "CmpItemKindStruct" },
  ["CmpItemKindInterface"] = { link = "CmpItemKindStruct" },
  ["CmpItemKindColor"] = { link = "CmpItemKindStruct" },

  ["CmpItemKindOperator"] = { link = "Operator" },

  ["CmpItemKindUnit"] = { link = "String" },
  ["CmpItemKindSnippet"] = { link = "CmpItemKindUnit" },

  ["CmpItemKindFolder"] = { link = "Directory" },
  ["CmpItemKindFile"] = { link = "CmpItemKindFolder" },

  ["CmpItemKindFunction"] = { link = "Function" },
  ["CmpItemKindTypeParameter"] = { link = "CmpItemKindFunction" },
  ["CmpItemKindMethod"] = { link = "CmpItemKindFunction" },
  ["CmpItemKindValue"] = { link = "CmpItemKindFunction" },

  -- Indent-blankline
  ["IndentBlanklineChar"] = { fg = p.black_four, nocombine = true },

  -- Nvimtree
  ["NvimTreeWindowPicker"] = { fg = p.gold_yellow, bg = p.black_two },
  ["NvimTreeWinSeparator"] = { fg = p.black_one, bg = p.black_one },
  ["NvimTreeNormal"] = { bg = p.black_one },

  -- Netrw
  ["netrwClassify"] = { link = "Directory" },

  -- Neogit
  ["NeogitBranch"] = { fg = p.moss_green, bold = true },
  ["NeogitRemote"] = { fg = p.olive_green, bold = true },

  ["NeogitSectionHeader"] = { fg = p.gold_yellow, bold = true },
  ["NeogitPopupSectionTitle"] = { link = "NeogitSectionHeader" },
  ["NeogitPopupOptionKey"] = { fg = p.moss_green },
  ["NeogitUnmergedInto"] = { link = "NeogitSectionHeader" },

  ["NeogitChangeModified"] = { fg = p.neutral },
  ["NeogitChangeAdded"] = { fg = p.good },
  ["NeogitChangeRemoved"] = { fg = p.bad },

  ["NeogitHunkHeader"] = { fg = p.white_one, bg = p.gray_one },
  ["NeogitHunkHeaderHighlight"] = { bg = p.gray_two },

  -- Vim fugitive
  ["diffRemoved"] = { fg = p.bad },
  ["diffAdded"] = { fg = p.good },
  ["diffSubname"] = { fg = p.shipcove_blue },

  -- nvim-notify
  ["NotifyERRORTitle"] = { fg = p.bad },
  ["NotifyWARNTitle"] = { fg = p.neutral },
  ["NotifyINFOTitle"] = { fg = p.good },
  ["NotifyDEBUGTitle"] = { fg = p.neutral },
  ["NotifyTRACETitle"] = { fg = p.wewak_pink },

  ["NotifyERRORBorder"] = { link = "VertSplit" },
  ["NotifyWARNBorder"] = { link = "VertSplit" },
  ["NotifyINFOBorder"] = { link = "VertSplit" },
  ["NotifyDEBUGBorder"] = { link = "VertSplit" },
  ["NotifyTRACEBorder"] = { link = "VertSplit" },

  ["NotifyERRORIcon"] = { link = "NotifyERRORTitle" },
  ["NotifyWARNIcon"] = { link = "NotifyWARNTitle" },
  ["NotifyINFOIcon"] = { link = "NotifyINFOTitle" },
  ["NotifyDEBUGIcon"] = { link = "NotifyDEBUGTitle" },
  ["NotifyTRACEIcon"] = { link = "NotifyTRACETitle" },

  ["NotifyERRORBody"] = { link = "Normal" },
  ["NotifyWARNBody"] = { link = "Normal" },
  ["NotifyINFOBody"] = { link = "Normal" },
  ["NotifyDEBUGBody"] = { link = "Normal" },
  ["NotifyTRACEBody"] = { link = "Normal" },
}

return M
