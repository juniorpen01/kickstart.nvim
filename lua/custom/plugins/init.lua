-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

vim.filetype.add {
  filename = {
    gitconfig = 'gitconfig',
    ['gitconfig.local'] = 'gitconfig',
  },
}

return {
  {
    'stevearc/oil.nvim',
    opts = {},
    keys = {
      { '-', '<cmd>Oil<CR>' },
    },
  },
  {
    'ellisonleao/gruvbox.nvim',
    opts = {},
    config = function()
      vim.cmd.colorscheme 'gruvbox'
    end,
  },
  {
    'iamcco/markdown-preview.nvim',
    cmd = { 'MarkdownPreviewToggle', 'MarkdownPreview', 'MarkdownPreviewStop' },
    build = 'cd app && yarn install',
    init = function()
      vim.g.mkdp_filetypes = { 'markdown' }
    end,
    ft = { 'markdown' },
  },
}
