"-------LEADER-------"
let mapleader=' '

"-------EDITOR-------"
nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>w :w<CR>
nmap <Leader>q :q <CR>

"-------TABS-------"
nmap te :tabedit 
nmap tn :tabnew .<CR>
nmap H :tabprev<CR>
nmap L :tabnext<CR>

"-------WINDOW-------"
" Split window
nmap ss :split<CR><C-w>w
nmap sv :vsplit<CR><C-w>w
" Move window
map sh <C-w>h
map sk <C-w>k
map sj <C-w>j
map sl <C-w>l
" Resize window
nnoremap <Leader>h 10<C-w>>
nnoremap <Leader>l 10<C-w><

"-------COPY/PASTE-------"
noremap YY "+y<CR>
noremap P "+gP<CR>
noremap XX "+x<CR>

"-------NERDTREE-------"
let NERDTreeQuitOnOpen=1
nmap <Leader>nt :NERDTreeFind<CR>

"-------TAGBAR-------"
nmap <Leader>tb :TagbarToggle<CR>

"-------GIT/FUGITIVE-------"
nmap <Leader>gs :LazyGit <CR>
nmap <Leader>gj :diffget //2<CR>
nmap <Leader>gl :diffget //3<CR>
nmap <Leader>gb :G switch 
nmap <Leader>gc :G commit -m  
nmap <Leader>gp :G push origin
nmap <Leader>gu :G pull origin

"-------COC/NVIM/KEYBLINGS-------"
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <leader>rn <Plug>(coc-rename)
nmap <leader>ca <Plug>(coc-codeaction)
nmap <leader>cf <Plug>(coc-fix-current)
nmap K :call CocActionAsync('doHover')<CR>
vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format)
nmap <leader>a :CocDiagnostic <CR>



"-------COC/NVIM/AUTOCOMPLETE-------"
set exrc
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

"-------SEARCH-------"
vnoremap <silent> * :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy/<C-R><C-R>=substitute(
  \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>
vnoremap <silent> # :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy?<C-R><C-R>=substitute(
  \scape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>
