return {
    "folke/tokyonight.nvim",
    priority = 1000,
    config = function()
        require("tokyonight").setup({
            on_highlights = function(hl, _)
                hl.LineNr = {
                    fg = "#b2b8cf",
                }
            end,
            transparent = true,
        })
        vim.cmd([[colorscheme tokyonight]])
    end,
}
