local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "javascript",
    "typescript",
    "tsx",
    "c",
    "markdown",
    "markdown_inline",
    "rust",
    "prisma",
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
  rainbow = {
    enable = true,
  },

  matchup = {
    enable = true,
    disable = {},
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "deno",
    "prettier",
    "prismals",

    -- c/cpp stuff
    "clangd",
    "clang-format",
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}
vim.cmd [[highlight IndentBlanklineIndent0 guifg=#E06C75 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent1 guifg=#E5C07B gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent2 guifg=#98C379 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent3 guifg=#56B6C2 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent4 guifg=#61AFEF gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent5 guifg=#C678DD gui=nocombine]]
M.blankline = {
  char_highlight_list = {
    "IndentBlanklineIndent0",
    "IndentBlanklineIndent1",
    "IndentBlanklineIndent2",
    "IndentBlanklineIndent3",
    "IndentBlanklineIndent4",
    "IndentBlanklineIndent5",
  },
}
return M
