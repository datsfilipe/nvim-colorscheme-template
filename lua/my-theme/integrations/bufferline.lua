local colorscheme = require 'my-theme.colorscheme'

local M = {}

function M.highlights(config)
  local bg = config.transparent and 'NONE' or colorscheme.sidebarBackground
  return {
    background = { bg = bg },
    buffer_visible = { fg = colorscheme.lineNumberText, bg = bg },
    buffer_selected = {
      fg = colorscheme.mainText,
      bg = colorscheme.editorBackground,
    },
    duplicate = {
      fg = colorscheme.mainText,
      bg = bg,
      italic = config.italics.bufferline or false,
    },
    duplicate_visible = {
      fg = colorscheme.mainText,
      bg = bg,
      italic = config.italics.bufferline or false,
    },
    duplicate_selected = {
      fg = colorscheme.mainText,
      bg = colorscheme.editorBackground,
      italic = config.italics.bufferline or false,
    },

    tab = { fg = colorscheme.mainText, bg = bg },
    tab_selected = {
      fg = colorscheme.mainText,
      bg = colorscheme.editorBackground,
    },
    tab_close = { fg = colorscheme.syntaxError, bg = bg },
    indicator_selected = {
      fg = colorscheme.syntaxFunction,
      bg = colorscheme.editorBackground,
      bold = true,
    },

    separator = { fg = colorscheme.editorBackground, bg = bg },
    separator_selected = {
      fg = colorscheme.editorBackground,
      bg = colorscheme.editorBackground,
    },
    separator_visible = { fg = colorscheme.editorBackground, bg = bg },
    offset_separator = { fg = colorscheme.editorBackground, bg = bg },
    tab_separator = { fg = colorscheme.editorBackground, bg = bg },
    tab_separator_selected = {
      fg = colorscheme.editorBackground,
      bg = colorscheme.editorBackground,
    },

    close_button = { fg = colorscheme.lineNumberText, bg = bg },
    close_button_visible = { fg = colorscheme.syntaxError, bg = bg },
    close_button_selected = {
      fg = colorscheme.syntaxError,
      bg = colorscheme.editorBackground,
    },

    fill = { bg = bg },

    numbers = { fg = colorscheme.lineNumberText, bg = bg },
    numbers_visible = { fg = colorscheme.lineNumberText, bg = bg },
    numbers_selected = {
      fg = colorscheme.mainText,
      bg = colorscheme.editorBackground,
      italic = config.italics.bufferline or false,
    },

    error = { fg = colorscheme.syntaxError, bg = bg },
    error_visible = { fg = colorscheme.syntaxError, bg = bg },
    error_selected = {
      fg = colorscheme.syntaxError,
      bg = colorscheme.editorBackground,
      italic = config.italics.bufferline or false,
    },
    error_diagnostic = { fg = colorscheme.syntaxError, bg = bg },
    error_diagnostic_visible = { fg = colorscheme.syntaxError, bg = bg },
    error_diagnostic_selected = {
      fg = colorscheme.syntaxError,
      bg = colorscheme.editorBackground,
    },

    warning = { fg = colorscheme.warningEmphasis, bg = bg },
    warning_visible = { fg = colorscheme.warningEmphasis, bg = bg },
    warning_selected = {
      fg = colorscheme.warningEmphasis,
      bg = colorscheme.editorBackground,
      italic = config.italics.bufferline or false,
    },
    warning_diagnostic = { fg = colorscheme.warningEmphasis, bg = bg },
    warning_diagnostic_visible = { fg = colorscheme.warningEmphasis, bg = bg },
    warning_diagnostic_selected = {
      fg = colorscheme.warningEmphasis,
      bg = colorscheme.editorBackground,
    },

    info = { fg = colorscheme.syntaxFunction, bg = bg },
    info_visible = { fg = colorscheme.syntaxFunction, bg = bg },
    info_selected = {
      fg = colorscheme.syntaxFunction,
      bg = colorscheme.editorBackground,
      italic = config.italics.bufferline or false,
    },
    info_diagnostic = { fg = colorscheme.syntaxFunction, bg = bg },
    info_diagnostic_visible = { fg = colorscheme.syntaxFunction, bg = bg },
    info_diagnostic_selected = {
      fg = colorscheme.syntaxFunction,
      bg = colorscheme.editorBackground,
    },

    hint = { fg = colorscheme.successText, bg = bg },
    hint_visible = { fg = colorscheme.successText, bg = bg },
    hint_selected = {
      fg = colorscheme.successText,
      bg = colorscheme.editorBackground,
      italic = config.italics.bufferline or false,
    },
    hint_diagnostic = { fg = colorscheme.successText, bg = bg },
    hint_diagnostic_visible = { fg = colorscheme.successText, bg = bg },
    hint_diagnostic_selected = {
      fg = colorscheme.successText,
      bg = colorscheme.editorBackground,
    },

    diagnostic = { fg = colorscheme.lineNumberText, bg = bg },
    diagnostic_visible = { fg = colorscheme.lineNumberText, bg = bg },
    diagnostic_selected = {
      fg = colorscheme.lineNumberText,
      bg = colorscheme.editorBackground,
      italic = config.italics.bufferline or false,
    },

    modified = { fg = colorscheme.warningText, bg = bg },
    modified_selected = {
      fg = colorscheme.warningText,
      bg = colorscheme.editorBackground,
    },
  }
end

return M
