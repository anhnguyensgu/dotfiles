---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require("custom.highlights")

M.ui = {
	theme = "everforest",
	theme_toggle = { "everforest", "everforest_light" },
	-- transparency = true,
	-- statusline = {
	-- 	theme = "minimal",
	-- },
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require("custom.mappings")

return M
