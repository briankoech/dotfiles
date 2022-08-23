local fn = vim.fn

-- Automatically install packer
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

-- This file can be loaded by calling `lua require('plugins')` from your init.vim


-- Only required if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")
	use("nvim-lua/plenary.nvim") -- Useful lua functions used lots of plugins

	-- use 'vim-airline/vim-airline'
	--  use 'preservim/nerdtree'

	use("ryanoasis/vim-devicons") -- Developer Icons
	use("terryma/vim-multiple-cursors") -- CTRL + N for multiple cursors

	use("windwp/nvim-autopairs")
	use("akinsho/bufferline.nvim")

	-- color schemes
	use("morhetz/gruvbox")
	use("sainnhe/gruvbox-material")
	use("sainnhe/everforest")
	use("sainnhe/edge")
	use("sainnhe/sonokai")
	use("rebelot/kanagawa.nvim")
	use("tomasiser/vim-code-dark")
	use("rktjmp/lush.nvim")

	use({
		"meliora-theme/neovim",
		requires = { "rktjmp/lush.nvim" },
	})

	-- tpope
	use("tpope/vim-surround") -- Surrounding ysw)
	use("tpope/vim-commentary") -- For Commenting gcc & gc

	use("ap/vim-css-color") -- CSS Color Preview
	-- use 'neoclide/coc.nvim'
	use("pangloss/vim-javascript")
	use("leafgarland/typescript-vim")
	use("peitalin/vim-jsx-typescript")
	use({ "styled-components/vim-styled-components", branch = "main" })
	use("jparise/vim-graphql")

	-- find using fzf and use coc-fzf for some fancy finding
	use({ "junegunn/fzf", run = "fzf#install()" })
	use("junegunn/fzf.vim")
	use("antoinemadec/coc-fzf")

	--
	-- Telescope
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.0",
		requires = { { "nvim-lua/plenary.nvim" } },
	})

	-- search in files
	use("dyng/ctrlsf.vim")

	use("lukas-reineke/indent-blankline.nvim")
	use("mattn/emmet-vim")

	-- syntax highlighting
	use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
	-- use 'nvim-treesitter/playground'

	-- cmp plugins
	use("hrsh7th/nvim-cmp") -- The complete plugin
	use("hrsh7th/cmp-buffer") -- buffer completions
	use("hrsh7th/cmp-path") -- path completions
	use("hrsh7th/cmp-cmdline") -- cmdline completions
	use("saadparwaiz1/cmp_luasnip") -- snippet completions
	use("hrsh7th/cmp-nvim-lsp")

	-- snippets
	use("L3MON4D3/LuaSnip") -- snippet engine
	use("rafamadriz/friendly-snippets") -- a bunch of snippets to use

	-- LSP
	use("neovim/nvim-lspconfig") -- enable LSP
	use("williamboman/nvim-lsp-installer") -- simple to use language server installer

	-- git
	use("lewis6991/gitsigns.nvim")

	-- line
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "kyazdani42/nvim-web-devicons", opt = true },
	})

	-- formatting
	use("jose-elias-alvarez/null-ls.nvim")

	use("wakatime/vim-wakatime")

	-- tree
	use({
		"kyazdani42/nvim-tree.lua",
		requires = {
			"kyazdani42/nvim-web-devicons", -- optional, for file icons
		},
		tag = "nightly", -- optional, updated every week. (see issue #1193)
	})

	-- Is using a standard Neovim install, i.e. built from source or using a
	-- provided appimage.
	use("lewis6991/impatient.nvim")
end)
