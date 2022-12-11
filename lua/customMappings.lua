-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"
-- add your own keymapping
lvim.keys.normal_mode["<C-'>"] = ":ToggleTerm<cr>"
lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"
lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>"
-- Use which-key to add extra bindings with the leader-key prefix
lvim.builtin.which_key.mappings["U"] = {
  name = "Virtual Text",
  U = { "<cmd>lua vim.diagnostic.config({ virtual_text = false, underline = true, signs = false})<cr>", "Only underline" },
  B = { "<cmd>lua vim.diagnostic.config({ virtual_text = fale, underline = true, signs = true})<cr>", "Underline and Signs"},
  S = { "<cmd>lua vim.diagnostic.config({ virtual_text = false, underline = false, signs = true })<cr>", "Only Signs" },
  A = { "<cmd>lua vim.diagnostic.config({ virtual_text = true, underline = true, signs = true })<cr>", "All" },
}
-- unmap a default keymapping
-- vim.keymap.del("n", "<C-Up>")
-- override a default keymapping
-- lvim.keys.normal_mode["<C-q>"] = ":q<cr>" -- or vim.keymap.set("n", "<C-q>", ":q<cr>" )

-- Change Telescope navigation to use j and k for navigation and n and p for history in both input and normal mode.
-- we use protected-mode (pcall) just in case the plugin wasn't loaded yet.
-- local _, actions = pcall(require, "telescope.actions")
-- lvim.builtin.telescope.defaults.mappings = {
--   -- for input mode
--   i = {
--     ["<C-j>"] = actions.move_selection_next,
--     ["<C-k>"] = actions.move_selection_previous,
--     ["<C-n>"] = actions.cycle_history_next,
--     ["<C-p>"] = actions.cycle_history_prev,
--   },
--   -- for normal mode
--   n = {
--     ["<C-j>"] = actions.move_selection_next,
--     ["<C-k>"] = actions.move_selection_previous,
--   },
-- }
