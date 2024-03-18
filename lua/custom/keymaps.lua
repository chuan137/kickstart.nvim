local M = {}

-- =============================================================================
-- Global mappings
-- =============================================================================
M.setup = function()
  vim.keymap.set('n', '<F2>', vim.lsp.buf.rename, { desc = 'Rename' })
  vim.keymap.set('n', '<F3>', vim.lsp.buf.references, { desc = 'References' })

  -- quit previous window; useful for closing quickfix or diff windows
  vim.keymap.set('n', '<M-q>', '<cmd>wincmd p | q<cr>', { desc = 'Quit previous window' })

  -- delete/paste without yanking to the clipboard
  vim.keymap.set({ 'n', 'x' }, '<leader>d', '"_d')
  vim.keymap.set('x', '<leader>p', '"_dP')

  -- speed up quitting fzf-lua terminal
  vim.keymap.del('t', '<esc><esc>')
end

-- =============================================================================
-- Plugin mappings
-- =============================================================================
M.fzflua = {
  { '<c-p>', '<cmd>FzfLua files<cr>', desc = 'Find files' },
  { '<c-q>', '<cmd>FzfLua resume<cr>', desc = 'Resume last command' },
  { '<leader>/', '<cmd>FzfLua live_grep_glob<cr>', desc = 'Live grep' },
  { '<leader>b/', '<cmd>FzfLua grep_curbuf<cr>', desc = 'Grep current buffer' },
  { '<leader>bb', '<cmd>FzfLua buffers<cr>', desc = 'Find buffers' },
  { '<leader>fc', '<cmd>FzfLua grep_cword<cr>', desc = 'Grep current word' },
  { '<leader>fC', '<cmd>FzfLua commands<cr>', desc = 'Commands' },
  { '<leader>fd', '<cmd>FzfLua lsp_document_diagnostics<cr>', desc = 'Document diagnostics' },
  { '<leader>ff', '<cmd>FzfLua files<cr>', desc = 'Find files' },
  { '<leader>fk', '<cmd>FzfLua lsp_document_symbols<cr>', desc = 'Document symbols' },
  {
    '<leader>fr',
    function()
      -- Read from ShaDa to include files that were already deleted from the buffer list.
      vim.cmd 'rshada!'
      require('fzf-lua').oldfiles()
    end,
    desc = 'Recently opened files',
  },
  { '<leader>wd', '<cmd>FzfLua lsp_workspace_diagnostics<cr>', desc = 'Workspace diagnostics' },
  { '<leader>wk', '<cmd>FzfLua lsp_workspace_symbols<cr>', desc = 'Workspace symbols' },
}

M.noice = {
    -- stylua: ignore start
    { "<leader>xn", function() require("noice").cmd("all") end, desc = "Nocie all" },
}

M.whichkey = {
  ['f'] = { name = 'Find' },
  ['g'] = { name = 'Git' },
  -- ["/"] = { "<Cmd>Telescope live_grep<CR>", "which_key_ignore" },
}

return M
