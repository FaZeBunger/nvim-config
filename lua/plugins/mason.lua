local M = {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"nvim-lua/plenary.nvim",
	},
}

M.servers = {
	"lua_ls",
	"rust_analyzer",
	"clangd",
}

function M.config()
	local lsp_zero = require("lsp-zero")
	lsp_zero.on_attach(function(_, bufnr)
		lsp_zero.default_keymaps({ buffer = bufnr })
	end)

	require("mason").setup({})
	require("mason-lspconfig").setup({
		ensure_installed = M.servers,
		handlers = {
			function(server_name)
				require("lspconfig")[server_name].setup({})
			end,
		},
	})
end

return M
