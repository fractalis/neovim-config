local M = {}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Add breakpoint at line"
    },
    ["<leader>dr"] = {
      "<cmd> DapContinue <CR>",
      "Run or continue the debugger"
    }
  }
}

M.crates = {
  n = {
    ["<leader>rcu"] = {
      function()
        require('crates').upgrade_all_Crates()
      end,
      "update crates"
    }
  }
}

M.trouble = {
  n = {
    ["<leader>xx"] = {
      function()
        require("trouble").open()
      end,
      "Toggle Trouble"
    },
    ["<leader>xw"] = {
      function()
        require("trouble").open("workspace_diagnostics")
      end,
      "Toggle Workspace Diagnostics"
    }
  }
}

return M
