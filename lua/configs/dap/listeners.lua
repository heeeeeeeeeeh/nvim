local dap, dapview = require("dap"), require("dap-view")
dap.listeners.before.attach.dapview_config = function()
  dapview.open()
end
dap.listeners.before.launch.dapview_config = function()
  dapview.open()
end
dap.listeners.before.event_terminated.dapview_config = function()
  dapview.close()
end
dap.listeners.before.event_exited.dapview_config = function()
  dapview.close()
end
