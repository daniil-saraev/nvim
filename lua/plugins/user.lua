return {
  { "nvim-neo-tree/neo-tree.nvim", enabled = false },
  {
    "fedepujol/move.nvim",
    lazy = false,
    config = function()
      require("move").setup {
        line = {
          enable = true, -- Enables line movement
          indent = true, -- Toggles indentation
        },
        block = {
          enable = true, -- Enables block movement
          indent = true, -- Toggles indentation
        },
        word = {
          enable = true, -- Enables word movement
        },
        char = {
          enable = true, -- Enables char movement
        },
      }
    end,
  },
  {
    "nvim-telescope/telescope-file-browser.nvim",
    lazy = false,
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
    config = function()
      local fb_actions = require("telescope").extensions.file_browser.actions
      require("telescope").setup {
        extensions = {
          file_browser = {
            display_stat = { date = true, size = false, mode = false },
            theme = "ivy",
            -- disables netrw and use telescope-file-browser in its place
            hijack_netrw = true,
            mappings = {
              ["i"] = {
                -- your custom insert mode mappings
              },
              ["n"] = {
                ["<A-a>"] = fb_actions.create,
              },
            },
          },
        },
      }
      -- To get telescope-file-browser loaded and working with telescope,
      -- you need to call load_extension, somewhere after setup function:
      require("telescope").load_extension "file_browser"
    end,
  },
  {
    "pappasam/papercolor-theme-slim",
    lazy = false,
  },
  {
    "AstroNvim/astrocore",
    ---@param opts AstroCoreOpts
    opts = {
      options = {
        opt = {
          showtabline = 0,
        },
      },
    },
  },
  {
    "AstroNvim/astrolsp",
    ---@type AstroLSPOpts
    opts = {
      features = {
        signature_help = true, -- enable automatic signature help popup globally on startup
      },
    },
  },
}
