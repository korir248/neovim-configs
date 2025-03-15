require "nvchad.mappings"

-- add yours here
-- local modules = require("lua.modules")

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<leader>hi", function ()
  local is_enabled = vim.lsp.inlay_hint.is_enabled()
  vim.lsp.inlay_hint.enable(not is_enabled)
end)
-- map("n", "z", "<S-k>", {desc = "Show definitions"})

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
