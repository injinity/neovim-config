-- EXAMPLE
local configs = require "nvchad.configs.lspconfig"

local on_attach = configs.on_attach
local on_init = configs.on_init
local capabilities = configs.capabilities

local lspconfig = require "lspconfig"
local util = require "lspconfig/util"
local servers = {
  "html",
  "cssls",
  "tsserver",
  "clangd",
  "kotlin_language_server",
  -- "rust_analyzer", -- DON'T add "rust_analyzer" here because we use "rusteacionvim" plugin so this would cause conflicts
}

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
  }
end
