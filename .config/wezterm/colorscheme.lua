M = {}

local rosepine_base = "#191724"
local rosepine_active_tab = {
	bg_color = "#26233a",
	fg_color = "#e0def4",
}
local rosepine_inactive_tab = {
	bg_color = rosepine_base,
	fg_color = "#6e6a86",
}
M.colors = {
	tab_bar = {
		background = rosepine_base,
		active_tab = rosepine_active_tab,
		inactive_tab = rosepine_inactive_tab,
		inactive_tab_hover = rosepine_active_tab,
		new_tab = rosepine_inactive_tab,
		new_tab_hover = rosepine_active_tab,
		inactive_tab_edge = "#6e6a86", -- (Fancy tab bar only)
	},
}
M.window_frame = {
	active_titlebar_bg = rosepine_base,
	inactive_titlebar_bg = rosepine_base,
}

return M
