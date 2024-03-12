return {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
        local capabilities = require("cmp_nvim_lsp").default_capabilities()

        local lspconfig = require("lspconfig")
        lspconfig.lua_ls.setup({
            capabilities = capabilities,
            filetypes = { "lua" },
        })

        lspconfig.pyright.setup({
            capabilities = capabilities,
            filetypes = { "python" },
        })

        lspconfig.ruff_lsp.setup({
            capabilities = capabilities,
            filetypes = { "python" },
        })
    end,
}
