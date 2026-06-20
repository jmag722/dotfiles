vim.g.mapleader = ' '

-- set undo to work on spaces
vim.keymap.set('i', '<Space>', '<Space><C-g>u', {
    noremap = true,
    silent = true
})


-- Option 1: The Neovim/NvChad standard (E for Error/Errors)
vim.keymap.set('n', '<leader>e', function()
  vim.diagnostic.open_float({ border = "rounded" })
end, { desc = "Open floating diagnostic message" })

