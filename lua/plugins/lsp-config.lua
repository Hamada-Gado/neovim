return {
  "neovim/nvim-lspconfig",
  lazy = false,
  config = function()
    local capabilities = require("cmp_nvim_lsp").default_capabilities()

    local lspconfig = require("lspconfig")

    -- show source of the diagnostic
    vim.diagnostic.config({
      virtual_text = {
        source = "always",
      },
      float = {
        source = "always",
      },
    })

    -- LSPs
    lspconfig.lua_ls.setup({
      capabilities = capabilities,
      filetypes = { "lua" },
    })

    lspconfig.pyright.setup({
      capabilities = capabilities,
      filetypes = { "python" },
    })

    lspconfig.tsserver.setup({
      capabilities = capabilities,
      filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
    })

    lspconfig.tailwindcss.setup({
      capabilities = capabilities,
      filetypes = { "html", "css", "scss", "javascript", "typescript", "javascriptreact", "typescriptreact" },
    })

    lspconfig.eslint.setup({
      capabilities = capabilities,
      filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
      settings = {
        workingDirectory = { mode = "auto" },
        format = { enable = true },
        lint = { enable = true },
      },
    })

    lspconfig.clangd.setup({
      capabilities = capabilities,
      filetypes = { "c", "cpp" },
    })

    lspconfig.ruff_lsp.setup({
      capabilities = capabilities,
      filetypes = { "python" },
    })

    lspconfig.rust_analyzer.setup({
      capabilities = capabilities,
      filetypes = { "rust" },
      root_dir = lspconfig.util.root_pattern("Cargo.toml"),
      settings = {
        ["rust-analyzer"] = {
          cargo = {
            allFeatures = true,
            loadOutDirsFromCheck = true,
          },
          procMacro = {
            enable = true,
          },
        },
      },
    })

    lspconfig.gleam.setup({
      capabilities = capabilities,
      filetypes = { "gleam" },
    })
  end,
}
