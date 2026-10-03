return {
  "stevearc/conform.nvim",
  dependencies = { "WhoIsSethDaniel/mason-tool-installer.nvim" },
  config = function()
    require("conform").setup({
      formatters_by_ft = {
        lua = { "stylua" },
        javascript = { "prettier" },
        typescript = { "prettier" },
        javascriptreact = { "prettier" },
        typescriptreact = { "prettier" },
        vue = { "prettier" },
        html = { "prettier" },
        css = { "prettier" },
        python = { "black" },
        c = { "clang-format" },
        cpp = { "clang-format" },
      },
      format_on_save = {
        timeout_ms = 500,
        lsp_format = "fallback",
      },
    })

    vim.keymap.set("n", "<leader>lf", function()
      require("conform").format({ async = true })
    end, { desc = "Format buffer" })
  end,
}
