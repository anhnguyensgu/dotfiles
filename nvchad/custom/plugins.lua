local overrides = require "custom.configs.overrides"

---@type NvPluginSpec[]
local plugins = { -- Override plugin definition options
  {
    "neovim/nvim-lspconfig",
    dependencies = { -- format & linting
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "custom.configs.null-ls"
        end,
      },
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end, -- Override to setup mason-lspconfig
  }, -- overrde plugin configs
  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },
  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  }, -- Install a plugin
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = overrides.mason,
  },
  {
    "utilyre/barbecue.nvim",
    version = "*",
    dependencies = {
      "SmiteshP/nvim-navic",
      "nvim-tree/nvim-web-devicons", -- optional dependency
    },
    config = function()
      require("barbecue").setup()
    end,
  },
  {
    "lvimuser/lsp-inlayhints.nvim",
    config = function()
      require("lsp-inlayhints").setup()
      vim.cmd [[hi LspInlayHint guifg=#5c6a72 guibg=NONE ]]
    end,
  },
  { "rafamadriz/friendly-snippets" },
  {
    "mg979/vim-visual-multi",
    branch = "master",
  },
  { "tpope/vim-surround", lazy = false },
  {
    "phaazon/hop.nvim",
    lazy = false,
    branch = "v2", -- optional but strongly recommended
    config = function()
      require("hop").setup {
        keys = "etovxqpdygfblzhckisuran",
      }
    end,
  },
}

return plugins
