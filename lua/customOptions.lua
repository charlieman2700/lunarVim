
vim.cmd [[ set showtabline=0 ]]

-- general
lvim.log.level = "warn"
lvim.format_on_save.enabled = false
lvim.colorscheme = "moonlight"
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = false
vim.o.updatetime = 250
vim.opt.updatetime = 250
vim.opt.spellfile = "/Users/charlie/.config/lvim/lua/spellfiles/es.utf-8.add"
-- lvim.use_icons = false
-- if you don't want all the parsers change this to a table of the ones you want
--
--
lvim.builtin.treesitter.ensure_installed = {
	"bash",
	"c",
	"cpp",
	"javascript",
	"json",
	"lua",
	"python",
	"typescript",
	"tsx",
	"css",
	"rust",
	"java",
	"yaml",
}

lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enable = true


vim.g.vimtex_view_general_viewer = "open -a Preview"
vim.g.vimtex_fold_enabled = 1
vim.g.tex_flavor = "latex"



