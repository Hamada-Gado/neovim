local g = vim.g
local opt = vim.opt

g.mapleader = " "
g.maplocalleader = " "

-- set syntax
vim.cmd("syntax enable")

-- set up colorscheme
opt.termguicolors = true

-- column and row limits
opt.colorcolumn = "80"
opt.scrolloff = 5

-- solve copilot tap map problem
g.copilot_assume_mapped = true

-- set up folding
opt.foldmethod = "expr"
opt.foldexpr = "nvim_treesitter#foldexpr()"
opt.foldenable = false

-- make indents 2 spaces
opt.expandtab = true
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2

-- make vim commands case insensitive
opt.ignorecase = true

-- show line numbers
opt.number = true
opt.relativenumber = true

-- show some invisible characters
opt.list = true

-- set spell check
opt.spell = true
