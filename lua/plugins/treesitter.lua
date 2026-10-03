return {
  "nvim-treesitter/nvim-treesitter",
  branch = "master",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = {
        "lua",
        "bash",
        "javascript",
        "typescript",
        "tsx",
        "html",
        "css",
        "vue",
        "dart",
        "python",
        "java",
        "cpp",
        "c",
      },
      auto_install = true,
      highlight = {
        enable = true,
      },
      indent = {
        enable = true,
      },
    })
  end,
}
