-- SETTINGS --

-- disable back up files when saving
vim.opt.backup = false

-- disable temp file creation during file writes
vim.opt.writebackup = true

-- set icon text for gvim and x11 gui, may affect tmux
vim.opt.icon = true

-- set scroll edge
vim.opt.scrolloff = 8

-- performace scrolling option
vim.opt.ttyfast = true

-- display all matching files on tab complete
vim.opt.wildmenu = true

-- shared data
-- '1000 keep 1000 marks
-- <1000 keep this much command line history
-- s1000000 max register size
vim.opt.shada = { "'1000", "<1000", "s1000000" }

-- avoid most "Hit Enter ..." messages
-- vim.opt.shortmess:append({ "a", "o", "O", "t", "T", "I" })

-- stop vim from adding newline to end of file
-- vim.opt.fixendofline = false

-- command history length
vim.opt.history = 1000

-- turn timeout on
vim.opt.timeout = true

-- set timeout length(for example the leaderkey timeout)
vim.opt.timeoutlen = 2000

-- autowrite saves current file when switching between files
-- vim.opt.autowrite = true

-- remove auto inserting comment symbols
-- r removes auto comment symbol when pressing enter while you're on a comment line
-- o removes auto comment symbol when pressing o or O on a comment line
vim.opt.formatoptions:remove("r")
vim.opt.formatoptions:remove("o")

-- ascii friendly invisble characters
vim.opt.listchars = {
  space = "·",
  trail = "•",
  nbsp = "*",
  extends = ">",
  precedes = "<",
  tab = "│>",
}
-- turn invisible characters on
vim.opt.list = true

-- folding
-- vim.opt.foldmethod = "manual"
-- vim.opt.foldmarker = { "{{{", "}}}" }
-- vim.opt.foldcolumn = "2"

-- turn spellcheck off
vim.opt.spell = false

-- explicit turning off of capitals triggering spellcheck
vim.opt.spellcapcheck = ""

-- search wraps file
vim.opt.wrapscan = true

-- search highlight
vim.opt.hlsearch = true

-- display match when only part way through
vim.opt.incsearch = true

-- search ignores case
vim.opt.ignorecase = true

-- smartcase will switch search to case sensitive if i explicity use capitals in the search term
vim.opt.smartcase = true

-- line numbers
vim.opt.number = true

-- turn off relative number
vim.opt.relativenumber = false

-- cursor line on
vim.opt.cursorline = true

-- cursor line options
--vim.opt.cursorlineopt = "number"
--vim.opt.cursorlineopt = "line"
vim.opt.cursorlineopt = "both"

-- show what mode currently in the status bar
vim.opt.showmode = true

-- shows command in bottom tray
vim.opt.showcmd = true

-- disable bell
vim.opt.visualbell = false
vim.opt.errorbells = false

-- wrap lines
vim.opt.wrap = true

-- linebreak wraps at work boundary instead of mid word
vim.opt.linebreak = true

-- show marker on wrapped lines
vim.opt.showbreak = ">> "

-- set smart indenting
vim.opt.smartindent = true

-- auto indent new lines
vim.opt.autoindent = true

-- indent wrapped lines
vim.opt.breakindent = true

-- smarttab make tab key respect shiftwidth for indentation and tabstap elsewhere
vim.opt.smarttab = true

-- sets tab width
vim.opt.tabstop = 4

-- softtabstop
vim.opt.softtabstop = 4

-- expand tab changes tabs to spaces
vim.opt.expandtab = false

-- shift width(>> or << to tab in or out)
vim.opt.shiftwidth = 4

-- text width before wrop
vim.opt.textwidth = 120

-- set a color column as a marker
vim.opt.colorcolumn = "120"
