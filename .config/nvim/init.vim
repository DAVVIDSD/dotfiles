set number
set mouse=a
set relativenumber
syntax enable
set encoding=utf-8
set autoindent
set background=dark
set nobackup
set hlsearch
set showcmd
set cmdheight=1
set laststatus=2
set scrolloff=10
set expandtab
set nobackup
set noswapfile
set nosc noru nosm
set lazyredraw
set ignorecase
set smarttab
filetype plugin indent on
set shiftwidth=4
set tabstop=4
set ai "Auto indent
set si "Smart indent
set nowrap "No Wrap lines
set backspace=start,eol,indent
set path+=**
set wildignore+=*/node_modules/*
set formatoptions+=r
set cursorline
set colorcolumn=130

"-------IMPORTS-------"
runtime ./plug.vim
runtime ./maps.vim

"-------COLORSCHEME-------"
let g:tokyodark_enable_italic = 0

colorscheme tokyodark
autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescriptreact





