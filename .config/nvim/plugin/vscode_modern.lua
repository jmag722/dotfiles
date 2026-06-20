vim.pack.add({
    'https://github.com/gmr458/vscode_modern_theme.nvim'
})

require('vscode_modern').setup({
    cursorline = true,
    transparent_background = false,
    nvim_tree_darker = true,
})

vim.cmd.colorscheme("vscode_modern")
