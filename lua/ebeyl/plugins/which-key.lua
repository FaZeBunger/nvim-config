return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 1000
	end,
	opts = {
		-- your configuration comes here
		-- or leave it empty to use the default settings
	},

	-- This is a test
}
