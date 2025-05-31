-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'stevearc/oil.nvim',
    opts = {},
    keys = {
      { '-', '<cmd>Oil<CR>' },
    },
  },
  -- { 'windwp/nvim-ts-autotag', opts = {} },
  {
    'ellisonleao/gruvbox.nvim',
    config = function()
      vim.cmd.colorscheme 'gruvbox'
    end,
  },
}
