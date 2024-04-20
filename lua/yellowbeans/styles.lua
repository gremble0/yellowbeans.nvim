local M = {}

local p = require("yellowbeans.palette")

-- TODO lazy load file/plugin specific hl groups?
M.hl_groups = {
  -- Main highlight groups
  ["Normal"] = { fg = p.fg, bg = p.bg },
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
  ["DiffText"] = { bg = p.neutral_bg },
  ["DiffAdd"] = { bg = p.good_bg },
  ["DiffChange"] = { bg = p.neutral_bg },
  ["DiffDelete"] = { bg = p.bad_bg },

  -- Tabline
  ["TabLineSel"] = { bg = p.bg, bold = true },
  ["TabLine"] = { fg = p.gray_two, bg = p.bg },
  ["TabLineFill"] = { bg = p.black_one },

  -- Unimportant text
  ["Conceal"] = { link = "Normal" },
  ["CursorLineNr"] = { link = "Normal" },
  ["Comment"] = { fg = p.gray_two, italic = true },
  ["NonText"] = { link = "Comment" },
  ["LineNr"] = { link = "Comment" },
  ["SpecialKey"] = { link = "Comment" },

  -- Important text
  ["Special"] = { fg = p.shipcove_blue },
  ["MatchParen"] = { fg = p.gold_yellow, bold = true },
  ["Title"] = { fg = p.gold_yellow, bold = true },
  ["Todo"] = { fg = p.olive_green },

  -- Menus
  ["Pmenu"] = { fg = p.fg, bg = p.bg },
  ["PmenuBg"] = { link = "VertSplit" },
  ["PmenuSel"] = { fg = p.bg, bg = p.gold_yellow },
  ["PmenuSbar"] = { fg = p.gold_yellow, bg = p.bg },
  ["PmenuThumb"] = { bg = p.gray_two },

  -- Search
  ["Search"] = { bg = p.gray_one },
  ["IncSearch"] = { link = "Search" },

  -- Bad things
  ["Error"] = { fg = p.bad },
  ["Warning"] = { fg = p.neutral },
  ["ErrorMsg"] = { link = "Error" },
  ["WarningMsg"] = { link = "Warning" },

  -- Other
  ["Directory"] = { fg = p.shipcove_blue },

  -- Preferred groups for syntax highlighting (other groups also refer to these,
  ["Constant"] = { fg = p.moss_green },
  ["Character"] = { link = "Constant" },
  ["Number"] = { link = "Constant" },
  ["Boolean"] = { link = "Constant" },
  ["Float"] = { link = "Constant" },

  ["String"] = { fg = p.olive_green },

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
  ["@lsp.type.macro"] = { link = "None" },
  ["@lsp.type.property"] = { link = "@property" },

  -- LspInfo
  ["LspInfoBorder"] = { link = "VertSplit" },

  -- Treesitter
  ["@module"] = { link = "Structure" },
  ["@property"] = { fg = p.dove_blue },
  ["@attribute"] = { fg = p.shipcove_blue },
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
  ["DiagnosticError"] = { link = "Error" },
  ["DiagnosticWarn"] = { link = "Warning" },
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
  ["GitSignsAddInline"] = { link = "DiffAdd" },
  ["GitSignsChangeInline"] = { link = "DiffChange" },
  ["GitSignsDeleteInline"] = { link = "DiffDelete" },

  -- Telescope
  ["TelescopeBorder"] = { link = "VertSplit" },
  ["TelescopePromptTitle"] = { link = "Title" },
  ["TelescopePreviewTitle"] = { link = "Title" },
  ["TelescopeResultsTitle"] = { link = "Title" },
  ["TelescopeMatching"] = { bold = true, fg = p.shipcove_blue },

  -- Nvim-cmp
  ["CmpItemAbbrDeprecated"] = { fg = p.gray_two, strikethrough = true },
  ["CmpItemAbbrMatch"] = { fg = p.shipcove_blue, bold = true },
  ["CmpItemAbbrMatchFuzzy"] = { fg = p.shipcove_blue, bold = true },

  ["CmpItemKindVariable"] = { link = "@variable" },
  ["CmpItemKindField"] = { link = "@property" },
  ["CmpItemKindProperty"] = { link = "@property" },

  ["CmpItemKindKeyword"] = { link = "Keyword" },

  ["CmpItemKindConstant"] = { link = "Constant" },
  ["CmpItemKindReference"] = { link = "Constant" },
  ["CmpItemKindEnumMember"] = { link = "Constant" },

  ["CmpItemKindStruct"] = { link = "Structure" },
  ["CmpItemKindEnum"] = { link = "Structure" },
  ["CmpItemKindClass"] = { link = "Structure" },
  ["CmpItemKindModule"] = { link = "Structure" },
  ["CmpItemKindInterface"] = { link = "Structure" },

  -- TODO: what are these?
  -- ["CmpItemKindColor"] = { link = "CmpItemKindStruct" },
  -- ["CmpItemKindEvent"] = { link = "@variable" },
  -- ["CmpItemKindValue"] = { link = "CmpItemKindFunction" },

  ["CmpItemKindOperator"] = { link = "Operator" },

  ["CmpItemKindUnit"] = { link = "String" },
  ["CmpItemKindSnippet"] = { link = "String" },
  ["CmpItemKindText"] = { link = "String" },

  ["CmpItemKindFolder"] = { link = "Directory" },
  ["CmpItemKindFile"] = { link = "Directory" },

  ["CmpItemKindFunction"] = { link = "Function" },
  ["CmpItemKindConstructor"] = { link = "Function" },
  ["CmpItemKindMethod"] = { link = "Function" },
  ["CmpItemKindTypeParameter"] = { link = "Type" },

  -- Indent-blankline
  ["IndentBlanklineChar"] = { fg = p.black_four, nocombine = true }, -- for older versions
  ["IblScope"] = { fg = p.gray_two, nocombine = true },
  ["IblIndent"] = { fg = p.black_four, nocombine = true },
  ["IblWhitespace"] = { fg = p.black_four, nocombine = true },

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
  ["NeogitUnmergedInto"] = { link = "NeogitSectionHeader" },
  ["NeogitPopupOptionKey"] = { fg = p.moss_green },

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
  ["NotifyDEBUGTitle"] = { fg = p.neutral },
  ["NotifyINFOTitle"] = { fg = p.good },
  ["NotifyTRACETitle"] = { fg = p.good },

  ["NotifyERRORIcon"] = { link = "NotifyERRORTitle" },
  ["NotifyWARNIcon"] = { link = "NotifyWARNTitle" },
  ["NotifyINFOIcon"] = { link = "NotifyINFOTitle" },
  ["NotifyDEBUGIcon"] = { link = "NotifyDEBUGTitle" },
  ["NotifyTRACEIcon"] = { link = "NotifyTRACETitle" },

  ["NotifyERRORBorder"] = { link = "VertSplit" },
  ["NotifyWARNBorder"] = { link = "VertSplit" },
  ["NotifyINFOBorder"] = { link = "VertSplit" },
  ["NotifyDEBUGBorder"] = { link = "VertSplit" },
  ["NotifyTRACEBorder"] = { link = "VertSplit" },

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
