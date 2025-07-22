" Habilitar Vim-Plug
call plug#begin('~/vimfiles/plugged')

" Plugins
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'sheerun/vim-polyglot'
Plug 'dense-analysis/ale'
Plug 'ryanoasis/vim-devicons'
Plug 'preservim/nerdtree'
Plug 'goerz/jupytext.vim'
Plug 'tpope/vim-fugitive'
Plug 'morhetz/gruvbox'

call plug#end()

" Configuraciones básicas
set encoding=utf-8
set number
set cursorline
set tabstop=4 shiftwidth=4 expandtab
set background=dark
colorscheme gruvbox
let g:airline_powerline_fonts=1
let g:airline_theme='gruvbox'
nnoremap <C-t> :NERDTreeToggle<CR>
let g:ale_linters = {'python': ['flake8', 'pylint']}
let g:ale_fixers = {'python': ['black', 'isort']}
let g:ale_fix_on_save = 1
let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1
