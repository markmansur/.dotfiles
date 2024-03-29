local fn = vim.fn

-- Automatically install packer if not already installed
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Install your plugins here
return packer.startup(function(use)
  use "wbthomason/packer.nvim" -- Have packer manage itself
  use "nvim-lua/popup.nvim" -- An implementation of the Popup API from vim in Neovim
  use "nvim-lua/plenary.nvim" -- Useful lua functions used ny lots of plugins
  use "nvim-lualine/lualine.nvim"
  use 'akinsho/bufferline.nvim'

  -- Color scheme
  use { "ellisonleao/gruvbox.nvim" }
  use 'folke/tokyonight.nvim'
  use 'MaxMEllon/vim-jsx-pretty' -- JSX highlighting
  use 'sainnhe/everforest'

  -- Completion
  use "hrsh7th/nvim-cmp" -- The completion plugin
  use "hrsh7th/cmp-buffer" -- buffer completions
  use "hrsh7th/cmp-path" -- path completions
  use "saadparwaiz1/cmp_luasnip" -- snippet completions
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-nvim-lsp-signature-help"
  use "windwp/nvim-autopairs" -- auto close brackets/quotes
  use "windwp/nvim-ts-autotag"
  use "tpope/vim-surround"

  -- Snippets
  use "L3MON4D3/LuaSnip" --snippet engine
  use "rafamadriz/friendly-snippets" -- a bunch of snippets to use

  -- LSP
  use "neovim/nvim-lspconfig"
  use "williamboman/mason.nvim"
  use "williamboman/mason-lspconfig.nvim"

  -- File explorer
  use 'kyazdani42/nvim-tree.lua'
  use 'kyazdani42/nvim-web-devicons'

  -- Telescope
  use 'nvim-telescope/telescope.nvim'

  -- Treesitter
  use 'nvim-treesitter/nvim-treesitter'

  -- Trouble
  use 'folke/trouble.nvim'

  -- Git
  use 'lewis6991/gitsigns.nvim'

  -- Comments
  use 'tpope/vim-commentary'
  use 'JoosepAlviste/nvim-ts-context-commentstring'

  -- Prettier
  use 'prettier/vim-prettier'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
