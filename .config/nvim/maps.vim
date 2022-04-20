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
nmap H :tabprev<Return>
nmap L :tabnext<Return>
nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>w :w<CR>
nmap <Leader>q :q <CR>
nmap <Leader>e :wq <CR>

"------------------------------
" GIT FUGITIVE
nmap <Leader>gs :G <CR>
nmap <Leader>gj :diffget //2<CR>
nmap <Leader>gl :diffget //3<CR>
nmap <Leader>gb :G switch 
nmap <Leader>gc :G commit -m  
nmap <Leader>gp :G push origin
nmap <Leader>gu :G pull origin



"------------------------------
" PLUG VIM
nmap <Leader>PI :PlugInstall<CR>
nmap <Leader>PC :PlugInstall<CR>

"------------------------------
" PLUG VIM
nmap TT :TodoTelescope<CR>

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

