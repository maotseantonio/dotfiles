---@type ChadrcConfig
local M = {}

M.base46 = {
	theme = "catppuccin",
	transparency = trye,

	-- hl_override = {
	-- 	Comment = { italic = true },
	-- 	["@comment"] = { italic = true },
	-- },
}


M.ui = {
	telescope = { style = "borderless" }, -- borderless / bordered
	cmp = {
	  style = "atom", -- default/flat_light/flat_dark/atom/atom_colored
	},
	statusline = {
	  theme = "minimal", -- default/vscode/vscode_colored/minimal
	  -- default/round/block/arrow separators work only for default statusline theme
	  -- round and block will work for minimal theme only
	  separator_style = "round",
	  order = {
		"mode",
		"file",
		"git",
		"%=",
		"lsp_msg",
		"python_venv",
		"diagnostics",
		"command",
		"clients",
		"cwd",
		"total_lines",
	  },

return M