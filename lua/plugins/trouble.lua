return {
  "folke/trouble.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("trouble").setup({})
    vim.keymap.set("n", "<leader>xx", ":Trouble diagnostics toggle<CR>", { desc = "Toggle diagnostics" })
  end,
}
