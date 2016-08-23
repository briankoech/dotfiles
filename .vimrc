set nocompatible   " be iMproved, required
filetype off       " required
" ======================== Vundle ===========================
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'

" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'

" Easily browse files and folder structure
Plugin 'scrooloose/nerdtree'

" Autocomplete plugin - code completion as you type
Plugin 'valloric/youcompleteme'

" Lean and mean status/tabline for vim that's light as air
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Don't know yet
Plugin 'flazz/vim-colorschemes'

" Syntax cheking hacks for vim
Plugin 'scrooloose/syntastic'

" Vim motions on speed
Plugin 'easymotion/vim-easymotion'

" Javascript plugins
Plugin 'pangloss/vim-javascript'
" beautify javascript
Plugin 'beautify-web/js-beautify'
Plugin 'Chiel92/vim-autoformat'
Plugin 'terryma/vim-multiple-cursors'

" Jade/pug plugin
Plugin 'digitaltoad/vim-pug'

" Fast file navigation
Plugin 'wincent/command-t'
"Automatically save changes to disk
Plugin '907th/vim-auto-save'

" Wakatime plugin
Plugin 'wakatime/vim-wakatime'
" Git plugin not hosted on GitHub
" Plugin 'gint://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" Use eslint in node_modules instead of global
Plugin 'mtscout6/syntastic-local-eslint.vim'
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': newL9'}
"
" All of your Plugins must be added before the following line
call vundle#end() " required
filetype plugin indent on " required
" To ignore plugin indent changes, instead use:
" filetype plugin on 
"
"============  Brief help ================
" :PluginList - list configured plugins
" :PluginInstall(!) - install(update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!) - confirm (or auto-improve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
" ==============================================
" Make backspace work normally in insert mode
set backspace=indent,eol,start

" show line numbers
set number 
:nnoremap <C-a> :NERDTreeToggle<CR>
nnoremap <F8> <C-w>w
" ===================== File indentation ==================
" By default, the indent is 2 spaces
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

" Display tabs so you don't forget to remove them
set list

" Map leader to ,
let mapleader = ','
let g:mapleader=','
" Autoformat current file$
map <F7> mzgg=G`z`
nnoremap <leader>f mkgg=G'k
" =============================================
" Indicate 80 chars mark
set colorcolumn=80

" Highlight serch results
set hlsearch

set mouse=a
syntax enable
" let g:molokai_original = 1
colorscheme seti 
set foldmethod=syntax
set foldlevelstart=1
" set nofoldenable

let javascript_fold=1
" Add syntastic for linting
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

set number

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_check_on_up = 1
set noswapfile
let g:syntastic_javascript_checkers = ['eslint']
" :imap jj <Esc>
let g:syntastic_error_symbol = '❌'
let g:syntastic_style_error_symbol = '⁉️'
let g:syntastic_warning_symbol = '⚠️'
let g:syntastic_style_warning_symbol = '💩'

highlight link SyntasticErrorSign SignColumn
highlight link SyntasticWarningSign SignColumn
highlight link SyntasticStyleErrorSign SignColumn
highlight link SyntasticStyleWarningSign SignColumn

let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'
let g:multi_cursor_start_key='<F6>'
let g:multi_cursor_start_key='<C-n>'
let g:multi_cursor_start_word_key='g<C-n>'
let NERDTreeShowHidden=1 " show hidden files by default
" ================ Vim autosave ===============
let g:auto_save = 1  " enable AutoSave on Vim startup
let g:auto_save_events = ["InsertLeave", "TextChanged"]
let g:auto_save_write_all_buffers = 1
