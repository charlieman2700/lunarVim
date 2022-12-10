
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

	-- UI
}
