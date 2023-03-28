
local status_okL, lspZero = pcall(require, "lsp-zero")
if not status_okL then
  return
end

lspZero.preset({
  name = 'minimal',
  set_lsp_keymaps = true,
  manage_nvim_cmp = true,
  suggest_lsp_servers = false,
})

-- (Optional) Configure lua language server for neovim
lspZero.nvim_workspace()

lspZero.setup()


local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "user.lsp.mason"
require("user.lsp.handlers").setup()
require "user.lsp.null-ls"
