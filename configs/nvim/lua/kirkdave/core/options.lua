vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

-- line numbers
opt.relativenumber = true -- show line numbers relative to the cursor line
opt.number = true -- shows the actual line number of the cursor line

-- tabs and spaces
opt.tabstop = 4 -- used to be 2 but 4 is easier to parse now
opt.shiftwidth = 4 -- indent by the same width as a tab
opt.expandtab = true -- spaces, the end, full stop
opt.autoindent = true -- use the indent from the line above with starting a new line

opt.wrap = false -- don't wrap lines

-- search settings
opt.ignorecase = true -- ignore casing when searching
opt.smartcase = true -- if we have multi casing in our search string, treat it as case sensitive

opt.cursorline = true -- highlight the current line the cursor is on

-- appearance
opt.termguicolors = true -- better color support, needs a true color terminal, like Alacritty or WezTerm
opt.background = "dark" -- if a colorscheme supports light and dark, use dark
opt.signcolumn = "yes"

opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom


opt.swapfile = false -- turn off swapfile

