return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  },
  keys = {
    {
      "<leader>f",
      function()
      end,
      desc = "FuzzyFinds(Telescope)",
    },
		{"<leader>t", function() end, desc = "Tree views (Neotree)"},
  },
}
