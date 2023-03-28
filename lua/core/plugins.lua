local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
  'ellisonleao/gruvbox.nvim',
  {
    'dracula/vim',
    lazy = false,
  },
  "nvim-tree/nvim-web-devicons",
  "nvim-tree/nvim-tree.lua",
  "folke/which-key.nvim",
  "nvim-lualine/lualine.nvim",
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.1',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },
  'nvim-treesitter/nvim-treesitter',
  {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v1.x',
    dependencies = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' },         -- Required
      { 'williamboman/mason.nvim' },       -- Optional
      { 'williamboman/mason-lspconfig.nvim' }, -- Optional

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },     -- Required
      { 'hrsh7th/cmp-nvim-lsp' }, -- Required
      { 'hrsh7th/cmp-buffer' },   -- Optional
      { 'hrsh7th/cmp-path' },     -- Optional
      { 'saadparwaiz1/cmp_luasnip' }, -- Optional
      { 'hrsh7th/cmp-nvim-lua' }, -- Optional

      -- Snippets
      { 'L3MON4D3/LuaSnip' },         -- Required
      { 'rafamadriz/friendly-snippets' }, -- Optional
    }
  },
   'jose-elias-alvarez/null-ls.nvim',   -- LSP diagnostics and code actions
  'goolord/alpha-nvim',

 "akinsho/bufferline.nvim",
 "moll/vim-bbye",




}

local opts = {}

require("lazy").setup(plugins, opts)
