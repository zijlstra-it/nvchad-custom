local M = {}

M.treesitter = {
  ensure_installed = {
    "c",
    "css",
    "dockerfile",
    "go",
    "html",
    "javascript",
    "json",
    "lua",
    "markdown",
    "markdown_inline",
    "php",
    "python",
    "rust",
    "sql",
    "terraform",
    "typescript",
    "vim",
    "yaml",
  },
  indent = {
    enable = true,
  },
}

M.mason = {
  ensure_installed = {
    -- lua
    "lua-language-server",
    "stylua",

    -- web dev
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "json-lsp",
    "deno",
    "prettier",

    -- markdown
    "marksman",
    "misspell",

    -- yaml
    "yaml-language-server",
    "yamlfmt",
    "yamllint",

    -- c/cpp
    "clangd",
    "clang-format",

    -- shell
    "bash-language-server",
    "shfmt",

    -- python
    "pyright",
    "black",

    -- terraform
    "terraform-ls",
    "tflint",

    -- ansible
    "ansible-language-server",

    -- docker
    "dockerfile-language-server",

    -- sql
    "sqlfluff",
    "sqls",

    -- go
    "gopls",
    "glint",
    "goimports",
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

  update_focused_file = {
    enable = true,
    update_root = true,
  },

  respect_buf_cwd = true,
}

return M
