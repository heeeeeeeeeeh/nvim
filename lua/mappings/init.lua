require "nvchad.mappings"

-- add yours here

Map = vim.keymap.set

Map("n", ";", ":", { desc = "CMD enter command mode" })
Map("i", "jk", "<ESC>")
-- keybinds that interact with git command or git ecosystem
require("mappings.git")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
