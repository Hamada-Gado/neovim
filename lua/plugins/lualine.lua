return {
	"nvim-lualine/lualine.nvim",
	config = function()
		print("lol")
		require("lualine").setup({
			options = {
				theme = "tokyonight",
			},
		})
	end,
}
