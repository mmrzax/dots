local M = {}

function M.colors()
	return {
		foreground = "#D8DEE9",
		background = "#242933",
		cursor_bg = "#D8DEE9",
		cursor_border = "#D8DEE9",
		cursor_fg = "#242933",
		selection_bg = "#D8DEE9",
		selection_fg = "#2E3440",

		ansi = {
			"#191D24",
			"#BF616A",
			"#A3BE8C",
			"#EBCB8B",
			"#81A1C1",
			"#B48EAD",
			"#8FBCBB",
			"#D8DEE9",
		},

		brights = {
			"#3B4252",
			"#D06F79",
			"#B1D196",
			"#F0D399",
			"#88C0D0",
			"#C895BF",
			"#93CCDC",
			"#E5E9F0",
		},
	}
end

return M
