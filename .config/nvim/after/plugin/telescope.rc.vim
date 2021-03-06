if !exists('g:loaded_telescope') | finish | endif

nnoremap  <silent> ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap  <silent> ;f <cmd>lua require('telescope.builtin').git_files()<cr>
nnoremap  <silent> fr <cmd>lua require('telescope.builtin').live_grep({grep_open_files=true})<cr>
nnoremap  <silent> fb <cmd>lua require('telescope.builtin').file_browser()<cr>
nnoremap <silent> tb <cmd>Telescope buffers<cr>
nnoremap <silent> ;; <cmd>Telescope help_tags<cr>

lua << EOF
function telescope_buffer_dir()
  return vim.fn.expand('%:p:h')
end

local telescope = require('telescope')
local actions = require('telescope.actions')

telescope.setup{
  defaults = {
    mappings = {
      n = {
        ["q"] = actions.close
      },
    },
  }
}
EOF
