return {
  {
    "akinsho/bufferline.nvim",
    opts = {
      options = {
        numbers = "ordinal",
      },
    },
  },

  {
    "nvim-neo-tree/neo-tree.nvim",
    keys = {
      { "-", "<leader>fe", desc = "Explorer NeoTree (Root Dir)", remap = true },
    },
  },

  {
    "echasnovski/mini.comment",
    opts = {
      mappings = {
        comment = "<localleader>cc",
        -- Toggle comment on current line
        comment_line = "<localleader>cc",
        -- Toggle comment on visual selection
        comment_visual = "<localleader>cc",
        -- Define 'comment' textobject (like `dgc` - delete whole comment block)
        -- Works also in Visual mode if mapping differs from `comment_visual`
        textobject = "<localleader>cc",
      },
    },
  },

  {
    "echasnovski/mini.bufremove",
    keys = {
      {
        "<localleader>bd",
        function()
          local bd = require("mini.bufremove").delete
          if vim.bo.modified then
            local choice = vim.fn.confirm(("Save changes to %q?"):format(vim.fn.bufname()), "&Yes\n&No\n&Cancel")
            if choice == 1 then -- Yes
              vim.cmd.write()
              bd(0)
            elseif choice == 2 then -- No
              bd(0, true)
            end
          else
            bd(0)
          end
        end,
        desc = "Delete Buffer",
      },
    },
  },

  -- add gruvbox
  {
    "ellisonleao/gruvbox.nvim",
    opts = {
      -- transparent_mode = true,
    },
  },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },

  {
    "catppuccin",
    opts = {
      -- transparent_background = true,
      flavour = "macchiato",
    },
  },

  {
    "neovim/nvim-lspconfig",
    -- opts = {
    --   servers = {
    --     -- Ensure mason installs the server
    --     clangd = {
    --       keys = {
    --         { "<localleader>sw", "<cmd>ClangdSwitchSourceHeader<cr>", desc = "Switch Source/Header (C/C++)" },
    --       },
    --     },
    --   },
    -- },
    opts = function()
      local keys = require("lazyvim.plugins.lsp.keymaps").get()
      -- rename is last keys
      keys[#keys + 1] = { "<localleader>rn", vim.lsp.buf.rename, desc = "Rename", has = "rename" }
    end,
  },

  {
    "simrat39/symbols-outline.nvim",
    cmd = "SymbolsOutline",
    keys = { { "<localleader>tl", "<cmd>SymbolsOutline<cr>", desc = "Symbols Outline" } },
    opts = {
      -- add your options that should be passed to the setup() function here
      position = "right",
    },
  },

  {
    "cbochs/portal.nvim",
    cmd = "Portal",
    keys = {
      { "<localleader>o", "<cmd>Portal jumplist backward<cr>", desc = "Jumplist backward" },
      { "<localleader>i", "<cmd>Portal jumplist forward<cr>", desc = "Jumplist forward" },
    },
    opts = {
      labels = { "j", "k", "h", "l", "m", "n" },
    },
  },

  {
    "chentoast/marks.nvim",
    cmd = "Marks",
    lazy = false,
    opts = {
      default_mappings = true,
    },
  },

  {
    "akinsho/toggleterm.nvim",
    config = true,
    cmd = "ToggleTerm",
    keys = { { "<F4>", "<cmd>ToggleTerm<cr>", desc = "Toggle floating terminal" } },
    opts = {
      open_mapping = [[<F4>]],
      direction = "float",
      shade_filetypes = {},
      hide_numbers = true,
      insert_mappings = true,
      terminal_mappings = true,
      start_in_insert = true,
      close_on_exit = true,
      shell = "zsh",
    },
  },

  {
    "Mr-LLLLL/interestingwords.nvim",
    opts = {
      -- colors = { "#aeee00", "#ff0000", "#0000ff", "#b88823", "#ffa724", "#ff2c4b" },
      colors = {
        "#aeee00",
        "#e5c07b",
        "#7FFFD4",
        "#8A2BE2",
        "#FF4500",
        "#008000",
        "#0000FF",
        "#FFC0CB",
        "#FFF9E3",
        "#7d5c34",
      },
      search_count = true,
      navigation = true,
      scroll_center = true,
      search_key = "<localleader>m",
      cancel_search_key = "<leader>M",
      color_key = "<localleader>m",
      cancel_color_key = "<leader>M",
      select_mode = "random", -- random or loop
    },
  },

  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      table.insert(opts.sections.lualine_x, 2, {
        require("interestingwords").lualine_get,
        cond = require("interestingwords").lualine_has,
        color = { fg = "#ff9e64" },
      })
    end,
  },
}
