" Description: Keymaps
let mapleader=' '
let NERDTreeQuitOnOpen=1
nnoremap <S-C-p> "0p
" Delete without yank
nnoremap <leader>d "_d
nnoremap x "_x

" Increment/decrement
nnoremap + <C-a>
nnoremap - <C-x>

" Delete a word backwards nnoremap dw vb"_d Select all
nmap <C-a> gg<S-v>G

" Save with root permission
command! W w !sudo tee > /dev/null %

" Search for selected text, forwards or backwards.
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

"-----------------------------
" Tabs
" Open current directory
nmap te :tabedit 
nmap tn :tabnew .<CR>
nmap <Leader>j :tabprev<CR>
nmap <Leader>l :tabnext<CR>
nmap <Leader>nt :NERDTreeFind<CR>
nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>w :w<CR>
nmap <Leader>q :q <CR>
nmap <Leader>e :wq <CR>
"map  / <Plug>(easymotion-sn)
"omap / <Plug>(easymotion-tn)
" These `n` & `N` mappings are options. You do not have to map `n` & `N` to EasyMotion.
" Without these mappings, `n` & `N` works fine. (These mappings just provide
" different highlight method and have some other features )

"------------------------------
" GIT FUGITIVE
nmap <Leader>gs :G <CR>
nmap <Leader>gj :diffget //2<CR>
nmap <Leader>gl :diffget //3<CR>
nmap <Leader>gc :G switch 

"------------------------------
" PLUG VIM
nmap <Leader>PI :PlugInstall<CR>
nmap <Leader>PC :PlugInstall<CR>

"------------------------------
" PLUG VIM
nmap TT :TodoTelescope<CR>

"______________________________
" COC
"
" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <leader>rn <Plug>(coc-rename)
nmap <leader>ac <Plug>(coc-codeaction)
nmap <leader>cf <Plug>(coc-fix-current)
nmap K :call CocActionAsync('doHover')<CR>
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)
vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format)
nmap <leader>cd :CocDiagnostic <CR>

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" nmap <expr> <silent> <C-d> <SID>select_current_word()
" function! s:select_current_word()
"   if !get(b:, 'coc_cursors_activated', 0)
"     return "\<Plug>(coc-cursors-word)"
"   endif
"   return "*\<Plug>(coc-cursors-word):nohlsearch\<CR>"
" endfunc

"------------------------------

" Windows

" Split window
nmap ss :split<CR><C-w>w
nmap sv :vsplit<CR><C-w>w
" Move window
map sh <C-w>h
map sk <C-w>k
map sj <C-w>j
map sl <C-w>l
" Resize window
nmap <C-s><left> <C-s><
nmap <C-w><right> <C-w>>
nmap <C-w><up> <C-w>+
nmap <C-w><down> <C-w>-
"nnoremap <silent>ÑÑ :vertical resize +30<CR>
"nnoremap <silent>LL :vertical resize -30<CR>
