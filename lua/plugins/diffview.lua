return {
  "sindrets/diffview.nvim",
  config = function()
    require("diffview").setup({})
    vim.keymap.set("n", "<leader>gd", ":DiffviewOpen<CR>", { desc = "Open Diffview" })
    vim.keymap.set("n", "<leader>gc", ":DiffviewClose<CR>", { desc = "Close Diffview" })
  end,
}
