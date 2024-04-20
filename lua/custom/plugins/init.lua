-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    config = function()
      --vim.cmd.colorscheme("catppuccin-latte")
      --vim.cmd.colorscheme("catppuccin-frappe")
      --vim.cmd.colorscheme("catppuccin-macchiato")
      require('catppuccin').setup {
        flavour = 'mocha',
        integrations = {
          cmp = true,
          treesitter = true,
          notify = false,
          mini = {
            enabled = true,
            indentscope_color = '',
          },
          neotest = true,
          dap = true,
          mason = true,
        },
      }
      vim.cmd.colorscheme 'catppuccin'
    end,
  },
}
