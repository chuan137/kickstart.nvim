return {
  {
    -- thanks to https://github.com/afjusto/dotfiles/blob/512dd4e0b8d2fb7788db2eb458a6379c85bd25cf/nvim/lua/kickstart/plugins/gitsigns.lua#L7
    'lewis6991/gitsigns.nvim',
    opts = {
      on_attach = function(buffer)
        local gs = require 'gitsigns'

        local function map(mode, l, r, desc)
          vim.keymap.set(mode, l, r, { buffer = buffer, desc = desc })
        end

        -- Navigation
        map('n', ']g', function()
          if vim.wo.diff then
            vim.cmd.normal { ']c', bang = true }
          else
            gs.nav_hunk 'next'
          end
        end, 'Next Hunk')

        map('n', '[g', function()
          if vim.wo.diff then
            vim.cmd.normal { '[c', bang = true }
          else
            gs.nav_hunk 'prev'
          end
        end, 'Prev Hunk')
      end,
    },
  },
}
