return {
    "stevearc/conform.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        local conform = require("conform")

        conform.setup({
            formatters_by_ft = {
                javascript = { "prettier" },
                typescript = { "prettier" },
                javascriptreact = { "prettier" },
                typescriptreact = { "prettier" },
                css = { "prettier" },
                html = { "prettier" },
                json = { "prettier" },
                markdown = { "prettier" },
                lua = { "stylua" },
                rust = { "rustfmt", lsp_format = "fallback" },
                python = { "isort", "black" },
                go = { "gofumpt" },
            },
            format_on_save = {
                lsp_fallback = true,
                async = false,
                timeout_ms = 100,
            },
        })

        vim.keymap.set({ "n", "v" }, "<leader>mp", function()
            conform.format({
                lsp_fallback = true,
                async = false,
                timeout_ms = 100,
            })
        end, { desc = "Format file or range (in visual mode)" })
    end,
}
