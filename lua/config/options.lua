-- Left column and similar settings
vim.opt.number = true -- display line numbers
vim.opt.relativenumber = true -- display relative line numbers
vim.opt.numberwidth = 2 -- set width of line number column
vim.opt.signcolumn = "yes" -- always show sign column
vim.opt.wrap = true -- display lines as single line
vim.opt.scrolloff = 10 -- number of lines to keep above/below cursor
vim.opt.sidescrolloff = 8 -- number of columns to keep to the left/right of cursor

-- Tab spacing/behavior
vim.opt.expandtab = true -- convert tabs to spaces
vim.opt.shiftwidth = 4 -- number of spaces inserted for each indentation level
vim.opt.tabstop = 4 -- number of spaces inserted for tab character
vim.opt.softtabstop = 4 -- number of spaces inserted for <Tab> key
vim.opt.smartindent = true -- enable smart indentation
vim.opt.breakindent = true -- enable line breaking indentation

-- General Behaviors
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.backup = false -- disable backup file creation
-- vim.opt.clipboard = "unnamedplus" -- enable system clipboard access
vim.opt.conceallevel = 0 -- show concealed characters in markdown files
vim.opt.fileencoding = "utf-8" -- set file encoding to UTF-8
vim.opt.mouse = "v" -- enable mouse support
vim.opt.showmode = false -- hide mode display
vim.opt.splitbelow = true -- force horizontal splits below current window
vim.opt.splitright = true -- force vertical splits right of current window
vim.opt.termguicolors = true -- enable term GUI colors
vim.opt.timeoutlen = 1000 -- set timeout for mapped sequences
vim.opt.undofile = true -- enable persistent undo
vim.opt.updatetime = 100 -- set faster completion
vim.opt.writebackup = false -- prevent editing of files being edited elsewhere
vim.opt.cursorline = true -- highlight current line
vim.opt.swapfile = false -- creates a swapfile

-- Searching Behaviors
vim.opt.hlsearch = true -- highlight all matches in search
vim.opt.ignorecase = true -- ignore case in search
vim.opt.smartcase = true -- match case if explicitly stated

vim.opt.syntax = "on"

-- Disable folding
vim.opt.fillchars = { fold = " " }
vim.opt.foldmethod = "indent"
vim.opt.foldenable = false
vim.opt.foldlevel = 99

-- Vim Airline theme
vim.g["airline_theme"]="base16_gruvbox_dark_hard"
vim.g["airline#extensions#tabline#enabled"] = 1
vim.g["airline#extensions#tabline#formatter"] = "unique_tail"
vim.g["airline_symbols.linenr"] = " ln "
vim.g["airline#extensions#whitespace#enabled"] = 0
vim.g["airline_powerline_fonts"] = 0
vim.g["airline#extensions#branch#enabled"] = 0

vim.g["rainbow_active"] = 1

vim.g["vim_markdown_folding_disabled"] = 1
vim.g["gitblame_enabled"] = 0
