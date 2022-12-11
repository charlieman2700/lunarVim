lvim.lsp.installer.setup.ensure_installed = {
	"sumneko_lua",
	"jsonls",
	"ltex",
}
-- -- change UI setting of `LspInstallInfo`
-- -- see <https://github.com/williamboman/nvim-lsp-installer#default-configuration>
-- lvim.lsp.installer.setup.ui.check_outdated_servers_on_open = false
-- lvim.lsp.installer.setup.ui.border = "rounded"
-- lvim.lsp.installer.setup.ui.keymaps = {
--     uninstall_server = "d",
--     toggle_server_expand = "o",
-- }

-- ---@usage disable automatic installation of servers
-- lvim.lsp.installer.setup.automatic_installation = false

-- ---configure a server manually. !!Requires `:LvimCacheReset` to take effect!!
-- ---see the full default list `:lua print(vim.inspect(lvim.lsp.automatic_configuration.skipped_servers))`
vim.list_extend(lvim.lsp.override, { "ltex" })
vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "ltex" })
-- local opts = {} -- check the lspconfig documentation for a list of all possible options
-- Words for vimtex
local path = "/Users/charlie/.config/lvim/lua/spellfiles/es.utf-8.add"
-- local dictionaryEnglish = "/Users/charlie/.config/lvim/lua/spellfiles/es.utf-8.add"
local words = { "Laboratorio" }

local dictionaries = {
	path = "/Users/charlie/.config/lvim/lua/spellfiles/es.utf-8.add",
	dictionaryEnglish = "/Users/charlie/.config/lvim/lua/dictionaries/english.txt",
}
for _, value in pairs(dictionaries) do
	for word in io.open(value, "r"):lines() do
		table.insert(words, word)
	end
end

require("lvim.lsp.manager").setup("ltex", {
	settings = {
		ltex = {
			dictionary = {
				["es"] = words,
			},
			disabledRules = { ["es"] = { "SMART_QUOTES" } },
			-- commands =  vim.json.decode("{ '\\label{}': 'ignore', '\\documentclass[]{}': 'ignore', '\\cite{}': 'dummy', '\\cite[]{}': 'dummy'}"),
			additionalRules = {
				enablePickyRules = true,
				motherTongue = "es",
			},
			language = "es",
		},
	},
})

-- ---remove a server from the skipped list, e.g. eslint, or emmet_ls. !!Requires `:LvimCacheReset` to take effect!!
-- ---`:LvimInfo` lists which server(s) are skipped for the current filetype
-- lvim.lsp.automatic_configuration.skipped_servers = vim.tbl_filter(function(server)
--   return server ~= "emmet_ls"
-- end, lvim.lsp.automatic_configuration.skipped_servers)

-- -- you can set a custom on_attach function that will be used for all the language servers
-- -- See <https://github.com/neovim/nvim-lspconfig#keybindings-and-completion>
-- lvim.lsp.on_attach_callback = function(client, bufnr)
--   local function buf_set_option(...)
--     vim.api.nvim_buf_set_option(bufnr, ...)
--   end
--   --Enable completion triggered by <c-x><c-o>
--   buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")
-- end
