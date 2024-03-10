vim.g.mapleader = " "

-- column and row limits
vim.opt.colorcolumn = "80"
vim.opt.scrolloff = 5

-- solve copilot tap map problem
vim.g.copilot_assume_mapped = true

-- set up folding
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"

-- make indents 4 spaces
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

-- make vim commands case insensitive
vim.opt.ignorecase = true

-- show line numbers
vim.wo.number = true
