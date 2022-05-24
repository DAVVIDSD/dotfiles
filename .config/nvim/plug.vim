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
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'tpope/vim-surround'
  Plug 'terryma/vim-multiple-cursors'
  Plug 'easymotion/vim-easymotion'
  Plug 'ryanoasis/vim-devicons'
  Plug 'lewis6991/gitsigns.nvim'
  Plug 'numToStr/Comment.nvim' 
  Plug 'JoosepAlviste/nvim-ts-context-commentstring'
  Plug 'folke/todo-comments.nvim'
  Plug 'sheerun/vim-polyglot'
  Plug 'Yggdroot/indentLine'
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'shaunsingh/nord.nvim'
  Plug 'preservim/nerdtree'
  Plug 'editorconfig/editorconfig-vim'
  Plug 'windwp/nvim-autopairs'
endif
call plug#end()
