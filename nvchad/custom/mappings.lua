local M = {}

M.custom = {
    i = {
        ["ww"] = {
            "<ESC>:w<CR>",
            "write and escape",
            opts = {
                nowait = true
            }
        },
        ["jk"] = {
            "<ESC>",
            "escape insert mode",
            opts = {
                nowait = true
            }
        }
    },
    n = {
        [";"] = {
            ":",
            "enter cmdline",
            opts = {
                nowait = true
            }
        }
    }
}
M.nvimtree = {
    plugin = true,
    n = {
        ["<C-b>"] = {"<cmd> NvimTreeToggle <CR>", "toggle nvimtree"}
    }
}

M.hop = {
    plugin = true,
    n = {
        ["<leader>j"] = {"<cmd> :HopChar2 <CR>", "Hope auto jump"}
    }
}

return M
