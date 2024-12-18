" ---------------------------
" settings
" ---------------------------
set nocompatible            " Disable compatibility with old vi
syntax on                   " Enable syntax highlighting
set number                  " Show line numbers
set relativenumber          " Relative line numbers
set autoindent              " Auto-indent new lines
set smartindent             " Smart indentation
set tabstop=4               " Number of spaces for a tab
set shiftwidth=4            " Number of spaces for auto-indent
set expandtab               " Use spaces instead of tabs
set softtabstop=4           " Backspace behaves like a tab
set ignorecase              " Ignore case for search
set smartcase               " Override ignorecase if uppercase letters exist
set hlsearch                " Highlight search results
set incsearch               " Incremental search
set mouse=a                 " Enable mouse support
set clipboard=unnamedplus   " Use system clipboard
set splitbelow splitright   " Open splits below/right
set showmatch               " Highlight matching parentheses
set ruler                   " Show cursor position
set wildmenu                " Enhanced command-line completion
set scrolloff=8             " Keep 8 lines above/below cursor
set undofile                " Enable undo history
set updatetime=300          " Faster updates for CursorHold events
filetype plugin on


" change leader key from \ to space
let mapleader = " "

" markdown setting 
autocmd FileType markdown setlocal spell spelllang=en_us
autocmd FileType markdown setlocal wrap linebreak nolist
autocmd FileType markdown setlocal tabstop=2 shiftwidth=2 expandtab autoindent
autocmd FileType markdown setlocal conceallevel=2
autocmd FileType markdown setlocal textwidth=80

" ---------------------------
" plugins
" ---------------------------
let g:airline_theme='wombat'

" vim-plug plugins 
call plug#begin('~/.vim/plugged')

" syntax highlighting
Plug 'sheerun/vim-polyglot'         
Plug 'morhetz/gruvbox'               
Plug 'altercation/vim-colors-solarized'
Plug 'dracula/vim', { 'as': 'dracula' }

Plug 'preservim/nerdcommenter'
nnoremap <leader>/ <Plug>NERDCommenterToggle
vnoremap <leader>/ <Plug>NERDCommenterToggle
let g:NERDSpaceDelims = 1

call plug#end()

" theme settings
colorscheme gruvbox
set background=dark
"colorscheme solarized
"set background=dark
"colorscheme dracula

" shortcuts to mimic visual studio code
nnoremap <A-Up> :m .-2<CR>==
nnoremap <A-Down> :m .+1<CR>==
vnoremap <A-Up> :m '<-2<CR>gv=gv
vnoremap <A-Down> :m '>+1<CR>gv=gv

nnoremap <A-S-Up> :t .-1<CR>
nnoremap <A-S-Down> :t .<CR>
vnoremap <A-S-Up> :t '<-1<CR>gv
vnoremap <A-S-Down> :t '>+1<CR>gv

" today's date in YYYY-MM-DD format
nnoremap <leader>d i<C-R>=strftime("%Y-%m-%d")<CR><Esc>
