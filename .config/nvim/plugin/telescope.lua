-- Install plenary and telescope natively using vim.pack
vim.pack.add({
    {src = "https://github.com/nvim-lua/plenary.nvim"},
    {src = "https://github.com/nvim-telescope/telescope.nvim"}
})

local telescope = require('telescope')
local actions = require('telescope.actions')

telescope.setup({
  defaults = {
    mappings = {
      i = {
        -- Use Ctrl+j and Ctrl+k to navigate results in Insert mode
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
      },
      n = {
        -- Use standard j and k inside Telescope's Normal mode
        ["j"] = actions.move_selection_next,
        ["k"] = actions.move_selection_previous,
      },
    },
  },
})
