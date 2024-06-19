local M = {
	"ful1e5/onedark.nvim",
	config = function()
		require("onedark").setup({
			highlight_linenumber = true,
			comment_style = "italic",
			keyword_style = "italic",
			function_style = "italic",
			variable_style = "italic",

			transparent = true,
		})
	end,
}

return M
