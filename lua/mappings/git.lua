-- restore current file
Map("n", "<leader>grf", function ()
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
