-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'folke/tokyonight.nvim',
    enabled = false,
  },

  {
    'sainnhe/gruvbox-material',
    init = function()
      vim.g.gruvbox_material_better_performance = 1
      vim.g.gruvbox_material_background = 'hard' -- 'hard' | 'medium' | 'soft'
      vim.g.gruvbox_material_foreground = 'material' -- 'material' | 'mix' | 'original'
      vim.g.gruvbox_material_ui_contrast = 'high' -- 'low' | 'high'
      vim.g.gruvbox_material_diagnostic_line_highlight = 0 -- 0 | 1

      vim.opt.background = 'dark'
      vim.cmd.colorscheme 'gruvbox-material'
    end,
  },
}
