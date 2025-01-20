return {
  {
    'zbirenbaum/copilot.lua',
    dependencies = {
      -- add copilot symbol to lualine
      -- { 'AndreM222/copilot-lualine', enabled = false },
    },
    event = 'InsertEnter',
    opts = {
      panel = { enabled = false },
      suggestion = {
        enabled = false,
        auto_trigger = true,
        debounce = 75,
        keymap = {
          -- dismiss = false, -- use <c-e> to dismiss completion, integrated into nvim-cmp mapping
          -- accept = false, -- use <tab> to accept completion, integrated into nvim-cmp mapping
          -- dismiss = '<C-e>',
          accept = '<C-j>',
          accept_word = false,
          accept_line = false,
          next = '<M-]>',
          prev = '<M-[>',
        },
      },
      filetypes = {
        yaml = true,
        markdown = true,
        help = true,
        gitcommit = true,
        gitrebase = true,
        hgcommit = true,
        svn = true,
        cvs = true,
        ['.'] = true,
      },
      server_opts_overrides = {},
    },
    config = function(_, opts)
      require('copilot').setup(opts)
    end,
  },

  {
    'zbirenbaum/copilot-cmp',
    config = function()
      require('copilot_cmp').setup()
    end,
  },
}
