local M = {}

local p = require("yellowbeans.palette")

-- TODO lazy load file/plugin specific hl groups?
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

  ["StatusLine"] = { fg = p.fg, bg = p.black_two },
  ["StatusLineNC"] = { fg = p.white_one, bg = p.black_two },

  ["WinBar"] = { link = "StatusLine" },
  ["WinbarNC"] = { link = "StatusLineNC" },

  ["Visual"] = { bg = p.gray_one },

  -- Diff mode
  ["Folded"] = { link = "Comment" },
  ["FoldColumn"] = { link = "Folded" },
  ["DiffAdd"] = { bg = p.good_bg },
  ["DiffDelete"] = { bg = p.bad_bg },

  -- Tabline
  ["TabLineSel"] = { bg = p.bg, bold = true },
  ["TabLine"] = { fg = p.gray_two, bg = p.bg },
  ["TabLineFill"] = { bg = p.black_one },

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

  ["Identifier"] = { fg = p.lavender_purple },
  ["Typedef"] = { link = "Identifier" },

  ["Function"] = { fg = p.perano_blue },

  ["Keyword"] = { fg = p.gold_yellow, bold = true },
  ["Statement"] = { link = "Keyword" },
  ["Conditional"] = { link = "Keyword" },
  ["Repeat"] = { link = "Keyword" },
  ["Label"] = { link = "Keyword" },
  ["Operator"] = { link = "Keyword" },

  ["PreProc"] = { fg = p.moss_green },
  ["Include"] = { link = "PreProc" },
  ["Macro"] = { link = "PreProc" },
  ["PreCondit"] = { link = "PreProc" },

  ["Type"] = { fg = p.shipcove_blue },
  ["StorageClass"] = { link = "Type" },
  ["Structure"] = { fg = p.sky_blue },

  ["Delimiter"] = { fg = p.hoki_blue },

  -- LSP
  ["@lsp.type.keyword"] = { link = "Keyword" },
  ["@lsp.type.variable"] = { link = "None" },
  ["@lsp.type.property"] = { link = "None" },

  -- LspInfo
  ["LspInfoBorder"] = { link = "VertSplit" },

  -- Treesitter
  ["@property"] = { fg = p.dove_blue },
  ["@variable.builtin"] = { link = "Keyword" },
  ["@variable.member"] = { link = "@property" },
  ["@string.documentation"] = { link = "Comment" },

  -- Markup
  ["@markup.heading"] = { fg = p.gold_yellow, bold = true },
  ["@markup.italic"] = { italic = true },
  ["@markup.strong"] = { bold = true },
  ["@markup.raw"] = { fg = p.shipcove_blue },
  ["@markup.link"] = { fg = p.shipcove_blue },
  ["@markup.link.label"] = { fg = p.olive_green },

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

  -- Mason
  ["MasonLink"] = { link = "Directory" },

  ["MasonMuted"] = { fg = p.gray_two },
  ["MasonMutedBlock"] = { bg = p.black_two },
  ["MasonMutedBlockBold"] = { bg = p.black_two, bold = true },

  ["MasonHeader"] = { fg = p.bg, bg = p.gold_yellow },
  ["MasonHeaderSecondary"] = { link = "MasonHeader" },
  ["MasonWarning"] = { fg = p.neutral },

  ["MasonHighlight"] = { fg = p.hoki_blue },
  ["MasonHighlightBlock"] = { bg = p.gray_one },
  ["MasonHighlightBlockSecondary"] = { link = "MasonHighlightBlock" },
  ["MasonHighlightBlockBold"] = { bg = p.gray_one, bold = true },
  ["MasonHighlightBlockBoldSecondary"] = { link = "MasonHighlightBlockBold" },
}

return M
