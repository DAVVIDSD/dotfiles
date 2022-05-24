if has("nvim")
  let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin()

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'

if has("nvim")
  Plug 'hoob3rt/lualine.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'tpope/vim-surround'
  Plug 'terryma/vim-multiple-cursors'
  Plug 'easymotion/vim-easymotion'
  Plug 'ryanoasis/vim-devicons'
  Plug 'lewis6991/gitsigns.nvim'
  Plug 'sheerun/vim-polyglot'
  Plug 'Yggdroot/indentLine'
  Plug 'shaunsingh/nord.nvim'
endif
call plug#end()
