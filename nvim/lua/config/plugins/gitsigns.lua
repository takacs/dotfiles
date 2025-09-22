-- Adds git related signs to the gutter, as well as utilities for managing changes
return {
	"lewis6991/gitsigns.nvim",
	opts = {
		signs = {
			add = { text = "+" },
			change = { text = "~" },
			delete = { text = "_" },
			topdelete = { text = "‾" },
			changedelete = { text = "~" },
		},
		current_line_blame = false, -- Disable by default
		current_line_blame_opts = {
			virt_text = true,
			virt_text_pos = "eol", -- 'eol' | 'overlay' | 'right_align'
			delay = 1000,
			ignore_whitespace = false,
		},
	},
	keys = {
		{ "<leader>gb", "<cmd>Gitsigns blame<CR>",      mode = "n", desc = "Toggle Git [B]lame" },
		{ "<leader>gl", "<cmd>Gitsigns blame_line<CR>", mode = "n", desc = "Toggle Git Blame [L]ine" },
	},
	-- TODO attach gb
}
