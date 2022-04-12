require('plugins')
require('treesitter-config')

vim.cmd([[
set number
set relativenumber
set autoindent
set tabstop=2
set shiftwidth=2
set smarttab
set softtabstop=2
set mouse=a
set expandtab

set autoread

let mapleader = ','
let g:mapleader = ','
set encoding=UTF-8

" map fzf to ctrl p
nnoremap <C-P> :GFiles<CR>

nnoremap <C-a> :NERDTreeToggle<CR>
map <leader>r :NERDTreeFind<cr>

nnoremap <leader>sv :source $MYVIMRC

colorscheme gruvbox-material
]])

vim.g.gruvbox_material_background = "hard"
vim.g.gruvbox_material_perfomance = 1
vim.g.gruvbox_material_disable_italic_comment = 1

-- TODO: documentation for future ref. MOVE THIS TO a DOC.md file
-- tabstop:          Width of tab character
-- softtabstop:      Fine tunes the amount of white space to be added
-- shiftwidth        Determines the amount of whitespace to add in normal mode
-- expandtab:        When this option is enabled, vi will use spaces instead of tabs
--
-- TODO: fix indent_config lines

