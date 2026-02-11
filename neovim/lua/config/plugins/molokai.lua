return {
  {
    "loctvl842/monokai-pro.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.opt.termguicolors = true

      require("monokai-pro").setup({
        filter = "classic", -- try: "classic", "octagon", "pro", "machine", "ristretto", "spectrum"
        transparent_background = true,
        -- terminal_colors = true,
      })

      vim.cmd.colorscheme("monokai-pro")
    end,
  },
}
