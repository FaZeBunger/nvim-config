local M = {
   'nvim-tree/nvim-tree.lua',
   keys = {
       { 'n', '<leader>nt', ':NvimTreeToggle<CR>' },
       { 'n', '<leader>nf', ':NvimTreeFindFile<CR>' },
   },
   config = function()
       require("nvim-tree").setup()
   end,
}

return M
