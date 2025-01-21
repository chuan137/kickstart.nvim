return {

  {
    'ahmedkhalf/project.nvim',
    config = function(opts)
      require('project_nvim').setup(opts)
    end,
  },

  {
    'nvim-neo-tree/neo-tree.nvim',
    branch = 'v3.x',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
      'MunifTanjim/nui.nvim',
    },
    cmd = 'Neotree',
    keys = {
      {
        '<leader>e',
        function()
          require('neo-tree.command').execute { toggle = true }
        end,
        desc = 'Explorer NeoTree (Root Dir)',
      },
      {
        '<leader>E',
        function()
          require('neo-tree.command').execute { toggle = true, dir = vim.fn.expand '%:p:h' }
        end,
        desc = 'Explorer NeoTree (cwd)',
      },
    },
    opts = {
      filesystem = {
        bind_to_cwd = false,
        follow_current_file = { enabled = true },
        use_libuv_file_watcher = true,
      },
    },
  },
}
