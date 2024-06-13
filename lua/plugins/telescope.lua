local M = {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.5",
	lazy = false,
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	keys = {
		{ "<leader>pf", "<cmd>Telescope find_files<cr>", desc = "Telescope" },
		{ "<leader>ps", "<cmd>Telescope live_grep<cr>", desc = "Telescope" },
	},
	config = function()
		require("telescope").setup()
	end,
}

return M
