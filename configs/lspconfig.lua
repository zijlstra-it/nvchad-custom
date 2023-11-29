local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = {
  "ansiblels",
  "bashls",
  "cssls",
  "clangd",
  "dockerls",
  "gopls",
  "html",
  "jsonls",
  "pyright",
  "terraformls",
  "tsserver",
  "yamlls",
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end
