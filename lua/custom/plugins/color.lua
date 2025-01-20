return {
  {
    'nuvic/flexoki-nvim',
    name = 'flexoki',
    priority = 1000,
    config = function()
      vim.o.background = 'light'
      vim.cmd.colorscheme 'flexoki'
    end,
  },
}
