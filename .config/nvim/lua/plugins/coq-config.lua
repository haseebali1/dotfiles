local lsp = require "lspconfig"
local coq = require "coq"

lsp.clangd.setup(coq.lsp_ensure_capabilities{})
lsp.cssls.setup(coq.lsp_ensure_capabilities{})
lsp.html.setup(coq.lsp_ensure_capabilities{})
lsp.pyright.setup(coq.lsp_ensure_capabilities{})
lsp.texlab.setup(coq.lsp_ensure_capabilities{})
lsp.tsserver.setup(coq.lsp_ensure_capabilities{})

vim.cmd('COQnow -s')

