---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme = "catppuccin",
  theme_toggle = { "catppuccin", "one_light" },
  hl_override = highlights.override,
  hl_add = highlights.add,
  transparency = true,
  statusline = {
    theme = "vscode_colored",
    overriden_modules = function()
      local st_modules = require "nvchad_ui.statusline.vscode_colored"
      local function get_npm()
        local npm = require("package-info").get_status()
        if npm ~= nil then
          return npm
        else
          return ""
        end
      end
      return {
        LSP_progress = function()
          return st_modules.LSP_progress() .. " " .. "%#NpmH1#" .. get_npm()
        end,
      }
    end,
  },
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
