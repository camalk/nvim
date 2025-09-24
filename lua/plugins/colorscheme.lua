return {
  -- -------------------------------------------------
  --               COLORSCHEME                       |
  -- -------------------------------------------------
  -- {
  --   "sainnhe/gruvbox-material",
  --   init = function()
  --     vim.g.gruvbox_material_background = "hard"
  --     vim.g.gruvbox_material_better_performance = 1
  --   end,
  -- },
  {
    "vague2k/vague.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd("colorscheme vague")
    end,
  },
  -- {
  --   "wnkz/monoglow.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   opts = {},
  --   config = function(_, opts)
  --     require("monoglow").setup(opts)
  --
  --     vim.api.nvim_set_hl(0, "@string.documentation.python", { link = "Comment" })
  --   end,
  -- },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "vague",
    },
  },
}
