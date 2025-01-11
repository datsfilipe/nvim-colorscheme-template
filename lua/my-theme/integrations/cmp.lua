local colorscheme = require 'my-theme.colorscheme'

local M = {}

function M.highlights()
  return {
    CmpItemAbbr = { fg = colorscheme.mainText },
    CmpItemAbbrDeprecated = { fg = colorscheme.mainText, strikethrough = true },
    CmpItemKind = { fg = colorscheme.syntaxFunction },
    CmpItemMenu = { fg = colorscheme.mainText },
    CmpItemAbbrMatch = { fg = colorscheme.successText, bold = true },
    CmpItemAbbrMatchFuzzy = { fg = colorscheme.successText, bold = true },

    -- kind support
    CmpItemKindSnippet = { fg = colorscheme.stringText },
    CmpItemKindKeyword = { fg = colorscheme.syntaxError },
    CmpItemKindText = { fg = colorscheme.warningEmphasis },
    CmpItemKindMethod = { fg = colorscheme.syntaxKeyword },
    CmpItemKindConstructor = { fg = colorscheme.syntaxKeyword },
    CmpItemKindFunction = { fg = colorscheme.syntaxKeyword },
    CmpItemKindFolder = { fg = colorscheme.syntaxKeyword },
    CmpItemKindModule = { fg = colorscheme.syntaxKeyword },
    CmpItemKindConstant = { fg = colorscheme.syntaxKeyword },
    CmpItemKindField = { fg = colorscheme.syntaxKeyword },
    CmpItemKindProperty = { fg = colorscheme.successText },
    CmpItemKindEnum = { fg = colorscheme.successText },
    CmpItemKindUnit = { fg = colorscheme.successText },
    CmpItemKindClass = { fg = colorscheme.warningText },
    CmpItemKindVariable = { fg = colorscheme.syntaxError },
    CmpItemKindFile = { fg = colorscheme.linkText },
    CmpItemKindInterface = { fg = colorscheme.stringText },
    CmpItemKindColor = { fg = colorscheme.syntaxError },
    CmpItemKindReference = { fg = colorscheme.syntaxError },
    CmpItemKindEnumMember = { fg = colorscheme.syntaxError },
    CmpItemKindStruct = { fg = colorscheme.syntaxFunction },
    CmpItemKindValue = { fg = colorscheme.warningEmphasis },
    CmpItemKindEvent = { fg = colorscheme.syntaxFunction },
    CmpItemKindOperator = { fg = colorscheme.syntaxError },
    CmpItemKindTypeParameter = { fg = colorscheme.syntaxError },
    CmpItemKindCopilot = { fg = colorscheme.linkText },
  }
end

return M
