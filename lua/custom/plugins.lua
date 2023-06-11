local plugins = {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        -- defaults
        "vim",
        "lua",

        -- web dev
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",
        "json",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",

    dependencies = {
      "jose-elias-alvarez/null-ls.nvim",
      config = function()
        require "custom.configs.null-ls"
      end,
      requires = { "nvim-lua/plenary.nvim" },
    },

    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "typescript-language-server",
        "json-lsp",
        "html-lsp",
        "css-lsp",
        "prettier",
      }
    }
  },
  {
    "kylechui/nvim-surround",
    version = "*",
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({})
    end
  },
  {
    "nvim-tree/nvim-tree.lua",
    opts = {
      view = {
        width = 45,
        adaptive_size = true,
      },
      git = {
        enable = true,
        ignore = false,
      },
      renderer = {
        root_folder_label = ":t",
        highlight_git = true,

        indent_markers = {
          enable = true,
        },

        icons = {
          webdev_colors = true,
          git_placement = "after",
          modified_placement = "after",
          padding = " ",
          show = {
            file = false,
            folder = true,
            folder_arrow = true,
            git = true,
            modified = true,
          },

          glyphs = {
            default = "󰈚",
            symlink = "",
            folder = {
              default = "󰉋",
              empty = "󰉋",
              empty_open = "",
              open = "",
              symlink = "",
              symlink_open = "",
              arrow_open = "",
              arrow_closed = "",
            },
            git = {
              unstaged = "✗",
              staged = "✓",
              unmerged = "",
              renamed = "➜",
              untracked = "✶",
              deleted = "",
              ignored = "◌",
            },
          },
        },
      },
      update_focused_file = {
        enable = true,
        -- update_cwd = true
      },
      diagnostics = {
        enable = true
      },
    }
  },
  {
    "windwp/nvim-ts-autotag",
    event = "VeryLazy",
    dependencies = {
      "nvim-treesitter/nvim-treesitter"
    },
    opts = {
      autotag = {
        enable = true,
      },
    }
  },
}
return plugins
