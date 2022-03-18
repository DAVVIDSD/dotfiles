if !exists('g:loaded_nvim_treesitter')
  echom "Not loaded treesitter"
  finish
endif

lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained",
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = true,
    disable = {},
  },
  context_commentstring = {
    enable = true,
    enable_autocmd = false,
  },
  ensure_installed = {
    "tsx",
    "json",
    "yaml",
    "html",
    "scss"
  },
  autotag = {
    enable = false,
  }
}

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }
EOF
