local M = {}

M.custom = {
	i = {
		["ww"] = {
			"<ESC>:w<CR>",
			"write and escape",
			opts = {
				nowait = true,
			},
		},
		["jk"] = {
			"<ESC>",
			"escape insert mode",
			opts = {
				nowait = true,
			},
		},
	},
	n = {

		[";"] = {
			":",
			"enter cmdline",
			opts = {
				nowait = true,
			},
		},
		["<leader>j"] = { "<cmd> HopChar2 <CR>", "Hope auto jump" },
		["<leader>x"] = {
			function()
				require("nvchad_ui.tabufline").close_buffer()
			end,
			"close buffer",
		},
	},
}
M.nvimtree = {
	plugin = true,
	n = {
		["<C-b>"] = { "<cmd> NvimTreeToggle <CR>", "toggle nvimtree" },
		["<leader>j"] = { "<cmd> HopChar2 <CR>", "Hope auto jump" },
	},
}
M.telescope = {
	plugin = true,
	i = {
		["<C-q>"] = {
			function()
				local actions = require("telescope.actions")
				actions.smart_send_to_qflist()
				actions.open_qflist()
			end,
			"send select file to quick and open",
		},
	},
}

return M
-- Quickfix override
-- configs/telescope.lua
-- mappings = {
--   i = {
--     ["<C-q>"] = actions.smart_send_to_qflist + actions.open_qflist,
--   },
--   n = {
--     ["q"] = require("telescope.actions").close,
--     ["<C-q>"] = actions.smart_send_to_qflist + actions.open_qflist,
--   },
-- },
--
