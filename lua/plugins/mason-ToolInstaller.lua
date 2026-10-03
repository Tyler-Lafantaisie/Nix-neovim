return {
  "WhoIsSethDaniel/mason-tool-installer.nvim",
  dependencies = { "mason-org/mason.nvim" },
  config = function()
    require("mason-tool-installer").setup({
      ensure_installed = {
        "stylua",
        "prettier",
        "black",
        "clang-format",
        "eslint_d",
      },
      auto_update = false,
    })
  end,
}
