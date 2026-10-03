return {
  "fedepujol/move.nvim",
  config = function()
    require("move").setup({})

    local opts = { noremap = true, silent = true }

    -- Normal mode: move current line up/down
    vim.keymap.set("n", "<A-j>", ":MoveLine(1)<CR>", opts)
    vim.keymap.set("n", "<A-k>", ":MoveLine(-1)<CR>", opts)

    -- Visual mode: move selected block up/down
    vim.keymap.set("v", "<A-j>", ":MoveBlock(1)<CR>", opts)
    vim.keymap.set("v", "<A-k>", ":MoveBlock(-1)<CR>", opts)

    -- Normal mode: move current line left/right (indent shift)
    vim.keymap.set("n", "<A-h>", ":MoveHChar(-1)<CR>", opts)
    vim.keymap.set("n", "<A-l>", ":MoveHChar(1)<CR>", opts)

    -- Visual mode: move selected block left/right
    vim.keymap.set("v", "<A-h>", ":MoveHBlock(-1)<CR>", opts)
    vim.keymap.set("v", "<A-l>", ":MoveHBlock(1)<CR>", opts)
  end,
}
