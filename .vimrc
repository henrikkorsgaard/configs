set encoding=utf-8
set number
set linebreak
set ruler
set autoindent
filetype plugin indent on
syntax enable

set mouse=a
set tabstop=4
set shiftwidth=4
set expandtab

" Remaps tabnew to ctrl-t
nnoremap <C-t> :tabnew<CR>
" mmap ctrl-n to nerdthree
map <C-n> :NERDTree<cr>

let g:solarized_termcolors=256
set t_Co=256

let NERDTreeShowHidden=1

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'NLKNguyen/papercolor-theme'
Plug 'sheerun/vim-polyglot'
Plug 'altercation/vim-colors-solarized'
Plug 'junegunn/goyo.vim'
Plug 'scrooloose/nerdtree'

" Initialize plugin system
call plug#end()

func! WordProcessorMode()
    Goyo 120x95%
    set formatoptions=aw2tq 
    
    set laststatus=0
    set foldcolumn=12
    set nonumber
    setlocal spell spelllang=en
    nnoremap \s eas<C-X><C-S>
    set background=light
    colorscheme PaperColor

endfu
com! Prose call WordProcessorMode() 

func! CodeMode()
    Goyo!
    set formatoptions=cql
    set number
    set ruler
    set laststatus=1
    set foldcolumn=0
    setlocal nospell
    set background=dark
    colorscheme solarized
endfu
com! Code call CodeMode()

set background=dark
colorscheme solarized

autocmd VimEnter call CodeMode() 

" we use this to indicate that the plugins are loaded
autocmd VimEnter * echo 'Welcome Henrik'
