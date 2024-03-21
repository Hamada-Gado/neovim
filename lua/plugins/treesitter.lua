return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local config = require("nvim-treesitter.configs")
        config.setup({
            ensure_installed = { "lua", "python" },
            auto_install = true,
            ignore_install = { "tmux" },
            highlight = { enable = true },
            indent = { enable = true },
        })
    end,
}
