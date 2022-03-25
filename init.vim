
" set runtimepath+=~/.vim,~/.vim/after
" set packpath+=~/.vim
" source ~/.vimrc

set number
set relativenumber
set autoindent
set tabstop=2
set shiftwidth=2
set smarttab
set softtabstop=2
set mouse=a

call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'

Plug 'ryanoasis/vim-devicons' " Developer Icons
Plug 'terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
" color schemes
" Plug 'rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'morhetz/gruvbox'
Plug 'lifepillar/vim-gruvbox8'
Plug 'sainnhe/gruvbox-material'

" tpope
Plug 'tpope/vim-surround' " Surrounding ysw)
Plug 'tpope/vim-commentary' " For Commenting gcc & gc

Plug 'ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/neoclide/coc.nvim'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'jparise/vim-graphql'

" find using fzf and use coc-fzf for some fancy finding
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'antoinemadec/coc-fzf'

" search in files
Plug 'dyng/ctrlsf.vim'

" colorscheme
Plug 'rebelot/kanagawa.nvim'
Plug 'tomasiser/vim-code-dark'

Plug 'lukas-reineke/indent-blankline.nvim'

call plug#end()

let mapleader = ','
let g:mapleader = ','

" map fzf to ctrl p
nnoremap <C-P> :GFiles<CR>

nnoremap <C-a> :NERDTreeToggle<CR>
map <leader>r :NERDTreeFind<cr>

nnoremap <leader>sv :source $MYVIMRC

" ============= colorscheme settings ====================
" Important!!
if has('termguicolors')
  set termguicolors
endif

" For dark version.
set background=dark
" Set contrast.
" This configuration option should be placed before `colorscheme gruvbox-material`.
" Available values: 'hard', 'medium'(default), 'soft'
let g:gruvbox_material_background = 'medium'
" For better performance
let g:gruvbox_material_better_performance = 1
let g:gruvbox_material_disable_italic_comment = 1
let g:airline_theme = 'gruvbox_material'

colorscheme gruvbox-material

" ====================================
" set fzf window size
let g:fzf_layout = { 'down': 15 }

set encoding=UTF-8

" tabstop:          Width of tab character
" softtabstop:      Fine tunes the amount of white space to be added
" shiftwidth        Determines the amount of whitespace to add in normal mode
" expandtab:        When this option is enabled, vi will use spaces instead of tabs
set tabstop     =2
set softtabstop =2
set shiftwidth  =2
set expandtab

source ~/AppData/Local/nvim/plug-config/coc.vim
