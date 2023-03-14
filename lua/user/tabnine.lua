local status_ok, tabnine = pcall(require, "tabnine")
if not status_ok then
  return
end

tabnine.setup({
  disable_auto_comment=true,
  accept_keymap="<Tab>",
  dismiss_keymap = "<C-]>",
  debounce_ms = 800,
  suggestion_color = {gui = "#808080", cterm = 244},
  exclude_filetypes = {"TelescopePrompt"}
})
-- local status_ok, tabnine = pcall(require, "cmp_tabnine.config")
-- if not status_ok then
--   return
-- end
--
-- tabnine.setup {
--   max_lines = 1000,
--   max_num_results = 20,
--   sort = true,
--   run_on_every_keystroke = true,
--   snippet_placeholder = "..",
--   ignored_file_types = { -- default is not to ignore
--     -- uncomment to ignore in lua:
--     -- lua = true
--   },
-- }
