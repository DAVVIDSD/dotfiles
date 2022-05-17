if has("nvim")
  let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin()

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'

if has("nvim")
  Plug 'hoob3rt/lualine.nvim'
  Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'tpope/vim-surround'
  Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
  Plug 'terryma/vim-multiple-cursors'
  Plug 'easymotion/vim-easymotion'
  Plug 'ryanoasis/vim-devicons'
  Plug 'morhetz/gruvbox'
  Plug 'shaunsingh/solarized.nvim'
  Plug 'lewis6991/gitsigns.nvim'
  Plug 'numToStr/Comment.nvim' 
  Plug 'JoosepAlviste/nvim-ts-context-commentstring'
  Plug 'folke/todo-comments.nvim'
  Plug 'kristijanhusak/defx-git'
  Plug 'kristijanhusak/defx-icons'
  Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
  Plug 'sheerun/vim-polyglot'
  Plug 'Yggdroot/indentLine'
  Plug 'kyazdani42/nvim-web-devicons'
  " Plug 'navarasu/onedark.nvim'
  Plug 'joshdick/onedark.vim'
  Plug 'shaunsingh/nord.nvim'
  

endif

Plug 'groenewege/vim-less', { 'for': 'less' }
Plug 'kchmck/vim-coffee-script', { 'for': 'coffee' }

call plug#end()
