local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
vim.opt.termguicolors = true
vim.opt.list = true
vim.opt.listchars:append "eol:↴"

-- automatically set cwd to file on opening neovim
autocmd("VimEnter", {
  pattern = "*",
  command = "lcd %:p:h",
})

autocmd("BufRead", {
  group = vim.api.nvim_create_augroup("CmpSourceCargo", { clear = true }),
  pattern = "Cargo.toml",
  callback = function()
    local cmp = require "cmp"
    cmp.setup.buffer { sources = { { name = "crates" } } }
  end,
})
