vim.cmd [[packadd packer.nvim]]

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua PackerSync
  augroup end
]])

return require('packer').startup(function(use)
  use({
    "folke/noice.nvim",
    requires = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    }
  })
  use 'wbthomason/packer.nvim'
  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  }
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons',
    },
    tag = 'nightly'
  }
  use 'sainnhe/everforest'
  use 'JoosepAlviste/palenightfall.nvim'

  use 'rmagatti/alternate-toggler'
  use 'windwp/nvim-autopairs'
  use 'mg979/vim-visual-multi'
  use 'gcmt/wildfire.vim'
  use 'tpope/vim-surround'
  use 'tpope/vim-fugitive'
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }
  use 'MattesGroeger/vim-bookmarks'
  use 'tom-anders/telescope-vim-bookmarks.nvim'

  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'onsails/lspkind-nvim'

  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'
  use 'jose-elias-alvarez/typescript.nvim'
  use 'jose-elias-alvarez/null-ls.nvim'
  use 'nvim-treesitter/nvim-treesitter'
  use 'windwp/nvim-ts-autotag'
  use 'p00f/nvim-ts-rainbow'
  use 'axelvc/template-string.nvim'
  use 'j-hui/fidget.nvim'
  use 'xiyaowong/nvim-transparent'
  use 'folke/todo-comments.nvim'
  use 'numToStr/Comment.nvim'
  use({
    'akinsho/toggleterm.nvim',
    tag = '*'
  })
  use 'tpope/vim-obsession'
  use 'dhruvasagar/vim-prosession'
  use('f-person/git-blame.nvim')
  use('github/copilot.vim')
  use({
    "glepnir/lspsaga.nvim",
    branch = "main",
  })

  -- Indent Line
  use "lukas-reineke/indent-blankline.nvim"

  -- Github Theme
  use({ 'projekt0n/github-nvim-theme' })

  -- GitSign
  use 'lewis6991/gitsigns.nvim'

  -- Color Highlight
  use 'NvChad/nvim-colorizer.lua'

  -- One Dark Pro theme
  use "olimorris/onedarkpro.nvim"
end)
