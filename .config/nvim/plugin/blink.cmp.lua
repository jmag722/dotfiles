-- Pinning to a specific version range allows Neovim to download prebuilt binaries
vim.pack.add({
  { src = "https://github.com/saghen/blink.cmp", version = vim.version.range("^1") },
})

require("blink.cmp").setup({
  -- Choose your preferred keymap preset ('default', 'super-tab', etc.)
  keymap = {
      preset = 'default',
        ['<Tab>'] = { 
          'snippet_forward', -- Jumps to the next argument/placeholder inside a function
          'select_next',     -- Cycles forward in the completion menu
          'fallback'         -- Inserts a literal tab if no menu or snippet is active
        },
        
        ['<S-Tab>'] = { 
          'snippet_backward', -- Jumps to the previous argument/placeholder
          'select_prev',      -- Cycles backward in the completion menu
          'fallback'
        },
        ['<CR>'] = { 'accept', 'fallback' }, -- Enter accepts selection
  },
  signature = {
      enabled = true,
      window = { border = 'rounded' },
  },
  completion = {
    trigger = { show_on_keyword = true, show_on_trigger_character = true },
    accept = {
      auto_brackets = {
        enabled = true, 
      },
    },
  },
  
  appearance = {
    use_nvim_cmp_as_default = true,
    nerd_font_variant = 'mono'
  },

  -- Default sources out-of-the-box
  sources = {
    default = { 'lsp', 'path', 'snippets', 'buffer' },
  },

})

