-- Cyberpunk Theme for Neovim

-- Ensure true color support (24-bit colors)
vim.o.termguicolors = true

-- Set background to dark
vim.opt.background = 'dark'

-- Define the colors used in the theme
local colors = {
  normal_fg = "#FF0055",
  normal_bg = "#120b10",
  visual_bg = "#563466",
  color_column_bg = "#182333",
  linenr_fg = "#FF0055",
  signcolumn_fg = "#00FFC8",
  diff_add_bg = "NONE",
  diff_delete_bg = "#ff1745",
  diff_text_bg = "#00ff84",
  matchparen_fg = "#FF0055",
  matchparen_bg = "#00FFC8",
  comment_fg = "#B30000",
  string_fg = "#76C1FF",
  number_fg = "#FF0000",
  float_fg = "#fffc58",
  boolean_fg = "#fffc58",
  keyword_fg = "#76C1FF",
  type_fg = "#00FF9C",
  todo_fg = "#00FF9C",
  error_fg = "#ff3270",
  warning_fg = "#009550",
  pmenu_fg = "#ff0055",
  statusline_fg = "#ff0055",
  statusline_bg = "#1d000a",
  tabline_fg = "#FF4081",
  tabline_bg = "NONE",
}

-- Function to set highlight groups
local function highlight(group, fg, bg, gui)
  vim.api.nvim_set_hl(0, group, { fg = fg, bg = bg, gui = gui })
end

-- Apply theme colors to highlight groups

-- General highlights
highlight("Normal", colors.normal_fg, colors.normal_bg, "NONE")
highlight("Visual", "NONE", colors.visual_bg, "NONE")
highlight("ColorColumn", "NONE", colors.color_column_bg, "NONE")
highlight("LineNr", colors.linenr_fg, "NONE", "NONE")
highlight("SignColumn", colors.signcolumn_fg, "NONE", "NONE")

-- Diff highlights
highlight("DiffAdd", colors.diff_add_bg, "NONE", "NONE")
highlight("DiffDelete", "NONE", colors.diff_delete_bg, "NONE")
highlight("DiffText", "NONE", colors.diff_text_bg, "NONE")
highlight("DiffChange", "NONE", "NONE", "NONE")

-- Matching parentheses
highlight("MatchParen", colors.matchparen_fg, colors.matchparen_bg, "NONE")

-- Search highlights
highlight("IncSearch", "NONE", "#283593", "NONE")
highlight("Search", "NONE", "#283593", "NONE")
highlight("Substitute", "NONE", "#283593", "NONE")

-- Syntax groups
highlight("Comment", colors.comment_fg, "NONE", "italic")
highlight("String", colors.string_fg, "NONE", "NONE")
highlight("Number", colors.number_fg, "NONE", "NONE")
highlight("Float", colors.float_fg, "NONE", "NONE")
highlight("Boolean", colors.boolean_fg, "NONE", "NONE")

-- Keyword and statement groups
highlight("Keyword", colors.keyword_fg, "NONE", "NONE")
highlight("Type", colors.type_fg, "NONE", "NONE")
highlight("Todo", colors.todo_fg, "#372963", "italic")
highlight("Error", colors.error_fg, "NONE", "undercurl")
highlight("WarningMsg", colors.warning_fg, "NONE", "NONE")

-- Pmenu
highlight("Pmenu", colors.pmenu_fg, "#140007", "NONE")
highlight("PmenuSel", "#140007", colors.pmenu_fg, "NONE")
highlight("PmenuSbar", "NONE", colors.pmenu_fg, "NONE")

-- StatusLine
highlight("StatusLine", colors.statusline_fg, colors.statusline_bg, "bold")
highlight("StatusLineNC", colors.statusline_fg, "#000000", "NONE")

-- TabLine
highlight("TabLine", colors.tabline_fg, "NONE", "NONE")
highlight("TabLineFill", "NONE", "NONE", "NONE")
highlight("TabLineSel", colors.tabline_fg, "NONE", "bold")

-- Cursor
highlight("Cursor", "#00FFC8", "NONE", "NONE")
highlight("CursorLine", "#140007", "#FF0055", "bold")
highlight("CursorLineNr", "#00FFC8", "#00FFC8", "NONE")
highlight("CursorColumn", "NONE", "NONE", "NONE")

