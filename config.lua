--[[
lvim is the global options object

Linters should be
filled in as strings with either
a global executable or a path to
an executable
]]
-- THESE ARE EXAMPLE CONFIGS FEEL FREE TO CHANGE TO WHATEVER YOU WANT

require "customOptions"
require "customMappings"
require "plugins"
require "debug.init"
require "customLsp"
require "customFormatters"
require "customLinters"


-- Change theme settings
-- lvim.builtin.theme.options.dim_inactive = true
-- lvim.builtin.theme.options.style = "storm"
-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
