-- arisu-pink theme - Dark & Pink Color Palette
-- Aesthetic dark theme with vibrant pink accents

local colors = {
  -- Background
  bg = "#0a0710",        -- Dark purple-black background
  bg_dark = "#05030a",   -- Even darker for contrast
  bg_float = "#0f0b17",  -- Float windows
  bg_popup = "#130e1c",  -- Popup menus
  bg_sidebar = "#08050e",-- Sidebar background
  bg_statusline = "#0c0814", -- Statusline background
  
  -- Foreground
  fg = "#f8f2ff",        -- Soft white with purple tint
  fg_dark = "#c9c3d4",   -- Dimmed text
  fg_gutter = "#6b5b7e", -- Line numbers and gutter
  
  -- Pink palette
  pink_bright = "#ff79c6",  -- Bright neon pink (main accent)
  pink_soft = "#ff92d0",    -- Soft pink
  pink_dim = "#e35aa5",     -- Dimmed pink
  pink_deep = "#c1549c",    -- Deep pink
  pink_glow = "#ffb3e6",    -- Pink glow for special elements
  
  -- Purple & Blue accents
  purple = "#bd93f9",    -- Lavender purple
  purple_dim = "#a57cd9",-- Dimmed purple
  blue = "#8be9fd",      -- Electric blue
  blue_dim = "#6ec2dc",  -- Dimmed blue
  cyan = "#79e6f0",      -- Cyan accent
  
  -- Green, Yellow, Red
  green = "#50fa7b",     -- Vibrant green
  green_dim = "#3ec96a", -- Dimmed green
  yellow = "#f1fa8c",    -- Soft yellow
  orange = "#ffb86c",    -- Warm orange
  red = "#ff5555",       -- Error red
  red_dim = "#e34c4c",   -- Dimmed red
  
  -- Grayscale
  gray = "#6d6d6d",      -- Neutral gray
  gray_light = "#8a7f9a",-- Light gray
  gray_dark = "#3d3448", -- Dark gray
  line = "#1f192b",      -- Line highlight
  border = "#2a1f3a",    -- Border color
}

local set = vim.api.nvim_set_hl

vim.cmd("highlight clear")
vim.o.termguicolors = true
vim.g.colors_name = "arisu-pink"

-- =====================
-- Editor & UI
-- =====================
set(0, "Normal", { fg = colors.fg, bg = colors.bg })
set(0, "NormalFloat", { fg = colors.fg, bg = colors.bg_float })
set(0, "FloatBorder", { fg = colors.border, bg = colors.bg_float })
set(0, "Cursor", { fg = colors.bg, bg = colors.pink_bright })
set(0, "CursorLine", { bg = colors.line })
set(0, "CursorLineNr", { fg = colors.pink_bright, bold = true })
set(0, "LineNr", { fg = colors.fg_gutter })
set(0, "CursorColumn", { bg = colors.line })
set(0, "ColorColumn", { bg = colors.line })
set(0, "SignColumn", { bg = colors.bg })
set(0, "FoldColumn", { fg = colors.gray, bg = colors.bg })
set(0, "Folded", { fg = colors.gray_light, bg = colors.bg_dark })
set(0, "EndOfBuffer", { fg = colors.bg })

-- =====================
-- Selection & Search
-- =====================
set(0, "Visual", { bg = colors.purple_dim, fg = colors.fg })
set(0, "VisualNOS", { bg = colors.purple_dim })
set(0, "Search", { fg = colors.bg, bg = colors.yellow })
set(0, "IncSearch", { fg = colors.bg, bg = colors.pink_soft, bold = true })
set(0, "MatchParen", { fg = colors.pink_bright, bg = colors.line, bold = true })

-- =====================
-- Syntax Highlighting
-- =====================
set(0, "Comment", { fg = colors.gray, italic = true })
set(0, "Keyword", { fg = colors.pink_bright, bold = true })
set(0, "Statement", { fg = colors.pink_soft })
set(0, "Conditional", { fg = colors.pink_dim, italic = true })
set(0, "Repeat", { fg = colors.pink_dim })
set(0, "Label", { fg = colors.pink_soft })
set(0, "Operator", { fg = colors.purple })
set(0, "Exception", { fg = colors.red })
set(0, "String", { fg = colors.green })
set(0, "Character", { fg = colors.green })
set(0, "Number", { fg = colors.purple })
set(0, "Boolean", { fg = colors.purple })
set(0, "Float", { fg = colors.purple })
set(0, "Function", { fg = colors.yellow })
set(0, "Method", { fg = colors.yellow })
set(0, "Identifier", { fg = colors.pink_soft })
set(0, "Variable", { fg = colors.fg })
set(0, "Type", { fg = colors.blue })
set(0, "Typedef", { fg = colors.blue })
set(0, "Structure", { fg = colors.cyan })
set(0, "StorageClass", { fg = colors.pink_bright })
set(0, "Constant", { fg = colors.purple })
set(0, "PreProc", { fg = colors.orange })
set(0, "PreCondit", { fg = colors.orange })
set(0, "Define", { fg = colors.orange })
set(0, "Include", { fg = colors.pink_bright })
set(0, "Special", { fg = colors.purple })
set(0, "SpecialChar", { fg = colors.pink_soft })
set(0, "Tag", { fg = colors.pink_bright })
set(0, "Delimiter", { fg = colors.gray_light })
set(0, "Debug", { fg = colors.red })

-- =====================
-- Diagnostics & Errors
-- =====================
set(0, "Error", { fg = colors.red, bold = true })
set(0, "ErrorMsg", { fg = colors.red, bold = true })
set(0, "WarningMsg", { fg = colors.yellow })
set(0, "ModeMsg", { fg = colors.green })
set(0, "MoreMsg", { fg = colors.blue })
set(0, "Question", { fg = colors.purple })
set(0, "DiagnosticError", { fg = colors.red })
set(0, "DiagnosticWarn", { fg = colors.yellow })
set(0, "DiagnosticInfo", { fg = colors.blue })
set(0, "DiagnosticHint", { fg = colors.purple })
set(0, "DiagnosticUnderlineError", { undercurl = true, sp = colors.red })
set(0, "DiagnosticUnderlineWarn", { undercurl = true, sp = colors.yellow })
set(0, "DiagnosticUnderlineInfo", { undercurl = true, sp = colors.blue })
set(0, "DiagnosticUnderlineHint", { undercurl = true, sp = colors.purple })

-- =====================
-- Popup & Menu
-- =====================
set(0, "Pmenu", { fg = colors.fg, bg = colors.bg_popup })
set(0, "PmenuSel", { bg = colors.pink_dim, fg = colors.fg, bold = true })
set(0, "PmenuThumb", { bg = colors.pink_bright })
set(0, "PmenuSbar", { bg = colors.gray_dark })

-- =====================
-- Statusline & Tabline
-- =====================
set(0, "StatusLine", { fg = colors.fg, bg = colors.bg_statusline })
set(0, "StatusLineNC", { fg = colors.gray, bg = colors.bg_dark })
set(0, "StatusLineTerm", { fg = colors.fg, bg = colors.bg_statusline })
set(0, "StatusLineTermNC", { fg = colors.gray, bg = colors.bg_dark })
set(0, "TabLine", { fg = colors.gray, bg = colors.bg_dark })
set(0, "TabLineSel", { fg = colors.pink_bright, bg = colors.bg, bold = true })
set(0, "TabLineFill", { bg = colors.bg_dark })
set(0, "WinBar", { fg = colors.fg, bg = colors.bg })
set(0, "WinBarNC", { fg = colors.gray, bg = colors.bg })

-- =====================
-- Windows & Splits
-- =====================
set(0, "VertSplit", { fg = colors.border, bg = colors.bg_dark })
set(0, "WinSeparator", { fg = colors.border })

-- =====================
-- Diff
-- =====================
set(0, "DiffAdd", { fg = colors.green, bg = colors.bg_dark })
set(0, "DiffChange", { fg = colors.yellow, bg = colors.bg_dark })
set(0, "DiffDelete", { fg = colors.red, bg = colors.bg_dark })
set(0, "DiffText", { fg = colors.blue, bg = colors.bg_dark })

-- =====================
-- Spell Checking
-- =====================
set(0, "SpellBad", { fg = colors.red, undercurl = true, sp = colors.red })
set(0, "SpellCap", { fg = colors.yellow, undercurl = true, sp = colors.yellow })
set(0, "SpellLocal", { fg = colors.blue, undercurl = true, sp = colors.blue })
set(0, "SpellRare", { fg = colors.purple, undercurl = true, sp = colors.purple })

-- =====================
-- Git Signs
-- =====================
set(0, "GitSignsAdd", { fg = colors.green })
set(0, "GitSignsChange", { fg = colors.yellow })
set(0, "GitSignsDelete", { fg = colors.red })

-- =====================
-- LSP References
-- =====================
set(0, "LspReferenceText", { bg = colors.line })
set(0, "LspReferenceRead", { bg = colors.line })
set(0, "LspReferenceWrite", { bg = colors.line })

-- =====================
-- Markdown & Help
-- =====================
set(0, "markdownH1", { fg = colors.pink_bright, bold = true })
set(0, "markdownH2", { fg = colors.pink_soft, bold = true })
set(0, "markdownH3", { fg = colors.purple, bold = true })
set(0, "markdownLinkText", { fg = colors.blue, underline = true })
set(0, "helpCommand", { fg = colors.purple })
set(0, "helpExample", { fg = colors.green })
