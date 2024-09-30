return {
	"smoka7/hop.nvim",
	event = "BufRead",
	version = "*",
	opts = {
		multi_windows = true,
	},
	keys = {
		{ "<leader>W", "<cmd>HopWord<CR>", mode = "n", desc = "Hop Word" },
		{ "<leader>L", "<cmd>HopLine<CR>", mode = "n", desc = "Hop Line" },
		{ "f", "<cmd>HopChar1CurrentLineAC<CR>", mode = { "n", "v", "o" }, desc = "Hop Char in Line (After Cursor)" },
		{ "F", "<cmd>HopChar1CurrentLineBC<CR>", mode = { "n", "v", "o" }, desc = "Hop Char in Line (Before Cursor)" },
	},
}
