-- Additional Plugins
lvim.plugins = {

  -- LATEX
  { "lervag/vimtex" },

  -- FUNCIONALITY
  {
    "phaazon/hop.nvim",
    branch = "v2", -- optional but strongly recommended
    config = function()
      require("hop").setup()
      vim.api.nvim_set_keymap("n", "s", ":HopChar2<cr>", { silent = true })
      vim.api.nvim_set_keymap("n", "S", ":HopWord<cr>", { silent = true })
    end,
  },

  { "tpope/vim-surround" },

  -- DEBUGGER
  {
    "mfussenegger/nvim-dap-python",
    config = function()
      require("dap-python").setup("~/.virtualenvs/debugpy/bin/python")
    end,
  },

  { "catppuccin/nvim", as = "catppuccin" },

  {
    "NvChad/base46",
    config = function()
      local ok, base46 = pcall(require, "base46")

      if ok then
        base46.load_theme()
      end
    end,
  },

  -- {
  --   "NvChad/ui",
  --   after = "base46",
  --   config = function()
  --     local present, nvchad_ui = pcall(require, "nvchad_ui")
  --
  --     if present then
  --       nvchad_ui.setup()
  --     end
  --   end,
  -- },
}
--UI
--
require("customConfigs.alpha")
require("customConfigs.telescope")
