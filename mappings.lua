local M = {}

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

return M
