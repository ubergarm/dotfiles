-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Color Schemes and Themes
  use 'morhetz/gruvbox'

  -- lsp zero plugin and config
  use {
    'VonHeikemen/lsp-zero.nvim',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},
      {'williamboman/nvim-lsp-installer'},

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-buffer'},
      {'hrsh7th/cmp-path'},
      {'saadparwaiz1/cmp_luasnip'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'hrsh7th/cmp-nvim-lua'},

      -- Snippets
      {'L3MON4D3/LuaSnip'},
      {'rafamadriz/friendly-snippets'},
    }
  }
  require('nvim-lsp-installer').settings({
    ui = {
      border = 'rounded'
    }
  })

  -- https://github.com/VonHeikemen/lsp-zero.nvim
  local lsp = require('lsp-zero')
  lsp.preset('recommended')

  -- lsp.preset('per-project')
  -- configure individual LSP servers
  -- pylsp https://github.com/python-lsp/python-lsp-server/blob/develop/CONFIGURATION.md
  -- this example does not work, maybe just switch to `pyright` lsp instead of `pylsp`
  -- lsp.configure('pylsp', {
  --     plugins = {
  --       pycodestyle = {
  --         max_line_length = 160
  --       },
  --     },
  --   on_attach = function(client, bufnr)
  --     print('pylsp running')
  --   end
  -- })
  -- setup must be the last lsp-zero function as it does all the things
  lsp.setup()


  -- neovim treesitter for advanced highlighting
  use 'nvim-treesitter/nvim-treesitter'

  -- for prettier: https://github.com/MunifTanjim/prettier.nvim
  -- use 'neovim/nvim-lspconfig' -- installed already above
  use 'jose-elias-alvarez/null-ls.nvim'
  use 'MunifTanjim/prettier.nvim'

  -- misc stuff i like
  use 'vim-airline/vim-airline'
  use 'tpope/vim-commentary'
  use 'tpope/vim-repeat'
  use 'tpope/vim-surround'

  -- setup must be the last lsp-zero function as it does all the things

end)
