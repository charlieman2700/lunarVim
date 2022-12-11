local banner = {
	"   ⣴⣶⣤⡤⠦⣤⣀⣤⠆     ⣈⣭⣿⣶⣿⣦⣼⣆          ",
	"    ⠉⠻⢿⣿⠿⣿⣿⣶⣦⠤⠄⡠⢾⣿⣿⡿⠋⠉⠉⠻⣿⣿⡛⣦       ",
	"          ⠈⢿⣿⣟⠦ ⣾⣿⣿⣷    ⠻⠿⢿⣿⣧⣄     ",
	"           ⣸⣿⣿⢧ ⢻⠻⣿⣿⣷⣄⣀⠄⠢⣀⡀⠈⠙⠿⠄    ",
	"          ⢠⣿⣿⣿⠈    ⣻⣿⣿⣿⣿⣿⣿⣿⣛⣳⣤⣀⣀   ",
	"   ⢠⣧⣶⣥⡤⢄ ⣸⣿⣿⠘  ⢀⣴⣿⣿⡿⠛⣿⣿⣧⠈⢿⠿⠟⠛⠻⠿⠄  ",
	"  ⣰⣿⣿⠛⠻⣿⣿⡦⢹⣿⣷   ⢊⣿⣿⡏  ⢸⣿⣿⡇ ⢀⣠⣄⣾⠄   ",
	" ⣠⣿⠿⠛ ⢀⣿⣿⣷⠘⢿⣿⣦⡀ ⢸⢿⣿⣿⣄ ⣸⣿⣿⡇⣪⣿⡿⠿⣿⣷⡄  ",
	" ⠙⠃   ⣼⣿⡟  ⠈⠻⣿⣿⣦⣌⡇⠻⣿⣿⣷⣿⣿⣿ ⣿⣿⡇ ⠛⠻⢷⣄ ",
	"      ⢻⣿⣿⣄   ⠈⠻⣿⣿⣿⣷⣿⣿⣿⣿⣿⡟ ⠫⢿⣿⡆     ",
	"       ⠻⣿⣿⣿⣿⣶⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⡟⢀⣀⣤⣾⡿⠃     ",
}

local bannerCoramDeo = {
	" ██████╗ ██████╗ ██████╗  █████╗ ███╗   ███╗    ██████╗ ███████╗ ██████╗ ",
	"██╔════╝██╔═══██╗██╔══██╗██╔══██╗████╗ ████║    ██╔══██╗██╔════╝██╔═══██╗",
	"██║     ██║   ██║██████╔╝███████║██╔████╔██║    ██║  ██║█████╗  ██║   ██║",
	"██║     ██║   ██║██╔══██╗██╔══██║██║╚██╔╝██║    ██║  ██║██╔══╝  ██║   ██║",
	"╚██████╗╚██████╔╝██║  ██║██║  ██║██║ ╚═╝ ██║    ██████╔╝███████╗╚██████╔╝",
	" ╚═════╝ ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝     ╚═╝    ╚═════╝ ╚══════╝ ╚═════╝ ",
}
--
local status_ok, dashboard = pcall(require, "alpha.themes.dashboard")
if status_ok then
	local function button(sc, txt, keybind, keybind_opts)
		local b = dashboard.button(sc, txt, keybind, keybind_opts)
		b.opts.hl_shortcut = "Include"
		return b
	end

	local text = require("lvim.interface.text")
	local lvim_version = require("lvim.utils.git").get_lvim_version()

	local footer = {
		text.align_center({ width = 0 }, {
			"",
			"lunarvim.org",
			lvim_version,
		}, 0.5),
	}

	lvim.builtin.alpha.dashboard.config = {

		layout = {
			{ type = "padding", val = 10 },
			{
				type = "text",
				val = banner,
				opts = { position = "center", hl = "function" },
			},

			{ type = "padding", val = 4 },

			{
				type = "group",
				val = {
					button("f", lvim.icons.ui.FindFile .. "  Find File", "<CMD>Telescope find_files<CR>"),
					button("n", lvim.icons.ui.NewFile .. "  New File", "<CMD>ene!<CR>"),
					button("p", lvim.icons.ui.Project .. "  Projects ", "<CMD>Telescope projects<CR>"),
					button("r", lvim.icons.ui.History .. "  Recent files", ":Telescope oldfiles <CR>"),
					button("t", lvim.icons.ui.FindText .. "  Find Text", "<CMD>Telescope live_grep<CR>"),
					button(
						"c",
						lvim.icons.ui.Gear .. "  Configuration",
						"<CMD>edit " .. require("lvim.config"):get_user_config_path() .. " <CR>"
					),
				},
				opts = { spacing = 1, hl = "Include" },
			},

			{ type = "padding", val = 5 },
			{
				type = "text",
				val = bannerCoramDeo,
				opts = { position = "center", hl = "function" },
			},
		},
	}
end
