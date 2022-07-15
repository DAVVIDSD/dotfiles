if has("nvim")
  let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin()

if has("nvim")
 Plug 'tpope/vim-fugitive'
 Plug 'nvim-lua/plenary.nvim'
 Plug 'neoclide/coc.nvim', {'branch': 'release'}
 Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
 Plug 'easymotion/vim-easymotion'
 Plug 'terryma/vim-multiple-cursors'
 Plug 'ryanoasis/vim-devicons'
 Plug 'lewis6991/gitsigns.nvim'
 Plug 'numToStr/Comment.nvim' 
 Plug 'JoosepAlviste/nvim-ts-context-commentstring'
 Plug 'folke/todo-comments.nvim'
 Plug 'easymotion/vim-easymotion'
 Plug 'windwp/nvim-autopairs'
 Plug 'tpope/vim-surround'
 Plug 'nvim-telescope/telescope.nvim'
 Plug 'hoob3rt/lualine.nvim'
 Plug 'preservim/nerdtree'
 Plug 'sheerun/vim-polyglot'
 Plug 'tiagovla/tokyodark.nvim'
 Plug 'kdheepak/lazygit.nvim'
 Plug 'preservim/tagbar'
 Plug 'akinsho/toggleterm.nvim', {'tag' : 'v2.*'}
endif

call plug#end()

