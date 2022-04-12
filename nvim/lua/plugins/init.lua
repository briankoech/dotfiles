-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use 'vim-airline/vim-airline'
  use 'preservim/nerdtree'

  use 'ryanoasis/vim-devicons' -- Developer Icons
  use 'terryma/vim-multiple-cursors' -- CTRL + N for multiple cursors

  -- color schemes
  use 'morhetz/gruvbox'
  use 'sainnhe/gruvbox-material'
  use 'sainnhe/everforest'
  use 'sainnhe/edge'
  use 'sainnhe/sonokai'
  use 'rebelot/kanagawa.nvim'
  use 'tomasiser/vim-code-dark'

  -- tpope
  use 'tpope/vim-surround' -- Surrounding ysw)
  use 'tpope/vim-commentary' -- For Commenting gcc & gc

use 'ap/vim-css-color' -- CSS Color Preview
-- use 'neoclide/coc.nvim'
use 'pangloss/vim-javascript'
use 'leafgarland/typescript-vim'
use 'peitalin/vim-jsx-typescript'
use { 'styled-components/vim-styled-components', branch = 'main' }
use 'jparise/vim-graphql'

-- find using fzf and use coc-fzf for some fancy finding
 -- use { 'junegunn/fzf',  run = 'fzf#install()' }
 -- use 'junegunn/fzf.vim'
 use 'antoinemadec/coc-fzf'

-- search in files
use 'dyng/ctrlsf.vim'

use 'lukas-reineke/indent-blankline.nvim'
use 'mattn/emmet-vim'

-- syntax highlighting
  use { 'nvim-treesitter/nvim-treesitter', run = ":TSUpdate" }
-- use 'nvim-treesitter/playground'

end)
