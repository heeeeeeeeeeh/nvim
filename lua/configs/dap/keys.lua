vim.api.nvim_create_autocmd("FileType", {
  pattern = "lua",
  callback = function()
    vim.keymap.set("n", "<leader>dl", function()
      require("osv").launch { port = 8086 }
    end, { noremap = true })
  end,
})
return {
  { "nb", "<cmd>DapToggleBreakpoint<cr>", { noremap = true, desc = "Toggle Breakpoint" } },
  { "nc", "<cmd>DapContinue<cr>", { noremap = true, desc = "DAP continue or start" } },
  { "nn", "<cmd>DapStepOver<cr>", { noremap = true, desc = "DAP Step over" } },
  { "no", "<cmd>DapStepOut<cr>", { noremap = true, desc = "DAP Step out" } },
  { "ni", "<cmd>DapStepInto<cr>", { noremap = true, desc = "DAP Step in" } },
  { "nt", "<cmd>DapTerminate<cr>", { noremap = true, desc = "DAP Terminate" } },
  { "nr", "<cmd>DapRestartFrame<cr>", { noremap = true, desc = "Dap Restart Frame" } },
}
