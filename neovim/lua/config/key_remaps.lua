-- KEY REMAPS --

vim.g.mapleader = ","
vim.g.maplocalleader = "\\"

-- open netrw
vim.keymap.set("n", "<leader>n", vim.cmd.Ex)

-- window pale navigation
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-l>", "<C-w>l")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")

-- Y to yank to end of line(same behavior as D and C)
vim.keymap.set("n", "Y", "y$")

-- H to move cursor to beginning of current word
vim.keymap.set("n", "H", "b")

-- L to move cursor to end of current word
vim.keymap.set("n", "L", "w")

-- function key maps
vim.keymap.set("n", "<F1>", ":set number!<CR>")
vim.keymap.set("n", "<F2>", ":set list!<CR>")
vim.keymap.set("n", "<F3>", ":syntax enable<CR>")
vim.keymap.set("n", "<S-F3>", ":syntax off<CR>")

-- turn of search highlighting
vim.keymap.set("n", "<BS><BS>", ":nohlsearch<CR>")

-- turn off comment continuation
vim.keymap.set("n", "<F4>", ":set formatoptions-=ro<CR>")
