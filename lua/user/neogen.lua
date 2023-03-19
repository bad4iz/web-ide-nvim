local status_ok, neogen = pcall(require, "neogen")
if not status_ok then
  return
end


neogen.setup {
  snippet_engine = "luasnip"
}

-- local opts = { noremap = true, silent = true }
-- local keymap = vim.api.nvim_set_keymap
-- keymap("i", "<C-l>", "<cmd>lua require('neogen').jump_next<CR>", opts)
-- keymap("i", "<C-h>", "<cmd>lua require('neogen').jump_prev<CR>", opts)
