require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
-- restore current file
map("n", "<leader>grf", function ()
  if vim.fn.input("restore current file current file (y/n): ") == "y" then
  local file = vim.fn.expand("%")
  if not file then
      return vim.notify("no file in buffer")
  end

  vim.cmd(string.format([[ 
    silent !git restore "%s"
    silent !e
  ]],file))
  end
end)

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
