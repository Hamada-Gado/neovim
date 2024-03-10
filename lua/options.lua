local g = vim.g
local opt = vim.opt

g.mapleader = " "

-- column and row limits
opt.colorcolumn = "80"
opt.scrolloff = 5

-- solve copilot tap map problem
g.copilot_assume_mapped = true

-- set up folding
opt.foldmethod = "expr"
opt.foldexpr = "nvim_treesitter#foldexpr()"
opt.foldenable = false

-- make indents 4 spaces
opt.expandtab = true
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4

-- make vim commands case insensitive
opt.ignorecase = true

-- show line numbers
vim.wo.number = true
