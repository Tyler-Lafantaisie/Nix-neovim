return {
  "mason-org/mason-lspconfig.nvim",
  dependencies = {
    "mason-org/mason.nvim",
    "neovim/nvim-lspconfig",
  },
  config = function()
    require("mason-lspconfig").setup({
      ensure_installed = {
        "lua_ls",
        "ts_ls",
        "html",
        "cssls",
        "pyright",
        "jdtls",
        "clangd",
      },
      automatic_enable = true,
    })
  end,
}
