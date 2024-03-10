return {
    "neovim/nvim-lspconfig",
    config = function()
        local capabilities = require("cmp_nvim_lsp").default_capabilities()

        local lspconfig = require("lspconfig")
        lspconfig.lua_ls.setup({
            capabilities = capabilities,
        })
        lspconfig.pyright.setup({
            capabilities = capabilities,
        })

        vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Show hover information" })
        vim.keymap.set("n", "<leader>lf", vim.diagnostic.open_float, { desc = "Open float diagnostics" })
        vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { desc = "Go to definition" })
        vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, { desc = "Go to references" })
        vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code action" })
    end,
}
