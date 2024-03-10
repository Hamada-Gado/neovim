vim.g.mapleader = " "

-- column and row limits
vim.opt.colorcolumn = "80"
vim.opt.scrolloff = 5

-- solve copilot tapp map problem
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

-- navigate vim panes better
vim.keymap.set("n", "<c-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>")

-- remove search highlight
vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>")

-- navigate buffers better
vim.keymap.set("n", "<leader>x", ":close<CR>")
vim.keymap.set("n", "<leader><BS>", ":bp<CR>")

-- toggle relative line numbers
vim.keymap.set("n", "<leader>r", ":set rnu!<CR>")
vim.wo.number = true
