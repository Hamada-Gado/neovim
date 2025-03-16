-- quick save
vim.keymap.set("n", "<leader>w", ":w<CR>", { desc = "Quick save" })

-- copy/paste
vim.keymap.set({ "n", "v" }, "<c-c>", '"+y', { desc = "Copy to clipboard" })
vim.keymap.set({ "n", "v" }, "<c-p>", '"0p', { desc = "Paste from reg zero" })

-- copy the current file path
vim.keymap.set("n", "<leader>cp", ":let @+=expand('%:p')<CR>", { desc = "Copy file path" })

-- spell check
vim.keymap.set("n", "<leader>ss", ":setlocal spell! spelllang=en_us<CR>", { desc = "Toggle spell check" })
vim.keymap.set("n", "<leader>sn", "]s", { desc = "Next spell error" })
vim.keymap.set("n", "<leader>sp", "[s", { desc = "Previous spell error" })
vim.keymap.set("n", "<leader>sa", "zg", { desc = "Add word to spell check" })
vim.keymap.set("n", "<leader>su", "zug", { desc = "Undo add word to spell check" })
vim.keymap.set("n", "<leader>sc", "z=", { desc = "Correct spelling" })
vim.keymap.set("n", "<leader>sia", "zG", { desc = "Add word to spell check for current buffers only" })
vim.keymap.set("n", "<leader>siu", "zuG", { desc = "Undo add word to spell check for current buffers only" })

-- navigate vim panes better
vim.keymap.set("n", "<c-k>", ":wincmd k<CR>", { desc = "Move up between panes" })
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>", { desc = "Move down between panes" })
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>", { desc = "Move left between panes" })
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>", { desc = "Move right between panes" })

-- resize panes
vim.keymap.set("n", "<a-k>", ":resize +2<CR>", { desc = "Resize pane up" })
vim.keymap.set("n", "<a-j>", ":resize -2<CR>", { desc = "Resize pane down" })
vim.keymap.set("n", "<a-l>", ":vertical resize +2<CR>", { desc = "Resize pane left" })
vim.keymap.set("n", "<a-h>", ":vertical resize -2<CR>", { desc = "Resize pane right" })

-- move lines up and down
vim.keymap.set("n", "<c-a-j>", ":m .+1<CR>", { desc = "Move line down" })
vim.keymap.set("n", "<c-a-k>", ":m .-2<CR>", { desc = "Move line up" })
vim.keymap.set("v", "<c-a-j>", ":m '>+1<CR>gv=gv", { desc = "Move line down" })
vim.keymap.set("v", "<c-a-k>", ":m '<-2<CR>gv=gv", { desc = "Move line up" })

-- remove search highlight
vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>", { desc = "Remove search highlight" })

-- windows
vim.keymap.set("n", "<leader>nt", ":tabnew<CR>", { desc = "New tab" })
vim.keymap.set("n", "<leader>vs", ":vsplit<CR>", { desc = "Vertical split" })
vim.keymap.set("n", "<leader>hs", ":split<CR>", { desc = "Horizontal split" })
vim.keymap.set("n", "<leader>x", ":close<CR>", { desc = "Close window" })

-- navigate buffers better
vim.keymap.set("n", "<leader>en", ":enew<CR>", { desc = "New empty buffer" })
vim.keymap.set("n", "<leader>bd", ":bd<CR>", { desc = "Delete buffer" })
vim.keymap.set("n", "<leader>bp", ":bp<CR>", { desc = "Previous buffer" })
vim.keymap.set("n", "<leader>bn", ":bn<CR>", { desc = "Next buffer" })

-- toggle relative line numbers
vim.keymap.set("n", "<leader>r", ":set rnu!<CR>", { desc = "Toggle relative line numbers" })

-- toggle line wrap
vim.keymap.set("n", "<leader>rp", ":set wrap!<CR>", { desc = "Toggle line wrap" })

-- toggle comment
vim.keymap.set("n", "<leader>/", function()
	require("Comment.api").toggle.linewise.current()
end, { desc = "Comment Toggle" })

vim.keymap.set(
	"v",
	"<leader>/",
	"<ESC>:lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>",
	{ desc = "Comment Toggle" }
)

-- debugging
vim.keymap.set("n", "<Leader>dt", ":DapToggleBreakpoint<CR>", { desc = "Toggle breakpoint" })
vim.keymap.set("n", "<Leader>dc", ":DapContinue<CR>", { desc = "Debugging: Continue" })
vim.keymap.set("n", "<Leader>dx", ":DapTerminate<CR>", { desc = "Debugging: Terminate" })
vim.keymap.set("n", "<Leader>di", ":DapStepInto<CR>", { desc = "Debugging: Step into" })
vim.keymap.set("n", "<Leader>do", ":DapStepOver<CR>", { desc = "Debugging: Step over" })
vim.keymap.set("n", "<Leader>dd", ":DapStepOut<CR>", { desc = "Debugging: Step out" })
vim.keymap.set("n", "<Leader>dr", ":DapRestartFrame<CR>", { desc = "Debugging: Restart frame" })

-- git
vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", { desc = "Preview git changes" })
vim.keymap.set("n", "<leader>gt", ":Gitsigns toggle_current_line_blame<CR>", { desc = "Toggle git blame" })

-- lSP
vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Show hover information" })
vim.keymap.set("n", "<leader>fd", vim.diagnostic.open_float, { desc = "Open float diagnostics" })
vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { desc = "Go to definition" })
vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, { desc = "Go to references" })
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code action" })
vim.keymap.set("n", "<leader>fm", vim.lsp.buf.format, { desc = "Format document" })
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename" })

-- neotree
vim.keymap.set("n", "<C-n>", ":Neotree filesystem toggle float<CR>", { desc = "Toggle filesystem floating" })

-- telescope
vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>", { desc = "Find files" })
vim.keymap.set("n", "<leader>fg", ":Telescope live_grep<CR>", { desc = "Live grep files" })
vim.keymap.set("n", "<leader>fb", ":Telescope buffers<CR>", { desc = "Buffers" })
vim.keymap.set("n", "<leader>km", ":Telescope keymaps<CR>", { desc = "Keymaps" })
vim.keymap.set("n", "<leader>gf", ":Telescope git_files<CR>", { desc = "Git files" })
vim.keymap.set("n", "<leader>fr", function()
	require("telescope.builtin").lsp_references()
end, { noremap = true, silent = true, desc = "LSP find all references" })
