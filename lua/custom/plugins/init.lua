return {
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    config = function()
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
  {
    'scalameta/nvim-metals',
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
    ft = { 'scala', 'sbt', 'java' },
    opts = function()
      local metals = require('metals').bare_config()
      metals.on_attach = function(client, bufnr)
        -- your on_attach function
      end

      return metals
    end,
    config = function(self, metals)
      local nvim_metals_group = vim.api.nvim_create_augroup('nvim-metals', { clear = true })
      vim.api.nvim_create_autocmd('FileType', {
        pattern = self.ft,
        callback = function()
          require('metals').initialize_or_attach(metals)
        end,
        group = nvim_metals_group,
      })
    end,
  },
  {
    'mbbill/undotree',
  },
}
