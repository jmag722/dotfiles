vim.pack.add({ 'https://github.com/neovim/nvim-lspconfig' })

local util = require('lspconfig.util')
-- set root dir based on presence of the following
vim.lsp.config('*', {
    root_markers = { '.git' },
})

vim.lsp.enable('pyright')
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = 'LSP Goto Definition' })

