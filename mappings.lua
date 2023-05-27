---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
  },
}

M.node = {
  n = {
    ["<leader>ns"] = {
      "<cmd> lua require('package-info').show() <CR>",
      opts = { silent = true, noremap = true },
    },
    ["<leader>nu"] = {
      "<cmd> lua require('package-info').update() <CR>",
      opts = { silent = true, noremap = true },
    },
  },
}
-- more keybinds!

return M
