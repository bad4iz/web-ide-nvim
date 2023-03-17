local status_ok, moveline = pcall(require, "moveline")
if not status_ok then
  return
end


-- Shorten function name
local keymap = vim.api.nvim_set_keymap

keymapt('n', '<M-k>', moveline.up)
keymap('n', '<M-j>', moveline.down)
keymap('v', '<M-k>', moveline.block_up)
keymap('v', '<M-j>', moveline.block_down)
