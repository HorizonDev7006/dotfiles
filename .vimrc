" specify the directory for vim-plug (default is ~/.vim/autoload/plug.vim)
call plug#begin('~/.vim/plugged')

" plugins
Plug 'tpope/vim-sensible'            " sane defaults for vim
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }   " fuzzy finder (needs fzf binary)
Plug 'preservim/nerdtree'            " file explorer
Plug 'airblade/vim-gitgutter'        " git diff in gutter
Plug 'ghifarit53/tokyonight-vim'

" initialize plugin system
call plug#end()

" basic settings
set number                      " show line numbers
set relativenumber              " relative line numbers for easier navigation
syntax on                      " enable syntax highlighting
set tabstop=4                  " number of spaces tabs count for
set shiftwidth=4               " indentation amount for < and >
set expandtab                  " use spaces instead of tabs
set smartindent                " auto indent new lines
set cursorline                 " highlight current line
set nowrap                    " no line wrap
set incsearch                 " incremental search highlight
set hlsearch                  " highlight search results
set ignorecase                " case insensitive search
set smartcase                 " case sensitive if uppercase in search
set mouse=a                   " enable mouse in all modes
set clipboard=unnamedplus     " use system clipboard

" key mappings
nnoremap <leader>n :NERDTreeToggle<CR>   " toggle file explorer with leader+n
nnoremap <leader>f :Files<CR>             " open fzf files with leader+f

" leader key
let mapleader="\<Space>"

" colorscheme
set termguicolors

let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 1

colorscheme tokyonight
