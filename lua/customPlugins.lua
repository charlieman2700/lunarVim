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

	{
		"Shatur/neovim-session-manager",
		-- event = "BufWritePost",
		config = function()
			require("customConfigs.sessionManager")
		end,
	},
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

	--UI
	{ "nvim-telescope/telescope-ui-select.nvim" },
	{ "shaunsingh/nord.nvim" },
	{
		"ellisonleao/gruvbox.nvim",
		config = function()
			require("customConfigs.gruvbox")
		end,
	},

	{ "andersevenrud/nordic.nvim" },

	{ "shaunsingh/moonlight.nvim" },
	{ "christoomey/vim-tmux-navigator" },
}
--
require("customConfigs.alpha")
require("customConfigs.telescope")
require("customConfigs.indent_blankline")
require ('customConfigs.bufferLine')
