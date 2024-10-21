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

	  M.Nvdash = {
		load_on_startup = true,
		header = get_header "nvchad",
		buttons = {
		  { txt = "  Find File", keys = "Spc f f", cmd = "Telescope find_files" },
		  { txt = "󰈚  Recent Files", keys = "Spc f r", cmd = "Telescope oldfiles" },
		  { txt = "󰈭  Find Word", keys = "Spc f w", cmd = "Telescope live_grep" },
		  { txt = "  Find Projects", keys = "Spc f p", cmd = "Telescope projects" },
		  { txt = "  Themes", keys = "Spc f t", cmd = "Telescope themes" },
		  { txt = "  Mappings", keys = "Spc n c", cmd = "NvCheatsheet" },
		},
	  }

return M