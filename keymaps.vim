nnoremap <leader>fe :Vex<CR>
nnoremap <leader>x :bd<CR>
nnoremap <leader><CR> :so ~/.config/nvim/init.vim<CR>
"nnoremap <C-p> :GFiles<CR>
"nnoremap <C-m> :Buffers<CR>
"nnoremap <leader>ff :Files<CR>
"nnoremap <leader>fi :Rg<CR>

inoremap <C-c> <esc>
nnoremap <M-j> :cnext<CR>
nnoremap <M-k> :cprev<CR>

"paste but don't update yank buffer
vnoremap <leader>p "_dP
vnoremap <leader>y "+y

"move and reindent in visual mode
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

"faster save and exit
inoremap <C-s> <esc>:w<cr>                 " save files
nnoremap <C-s> :w<cr>

"run node
au FileType javascript nnoremap <leader>r :!node %<cr>
au FileType python nnoremap <leader>r :!python %<cr>

inoremap <silent><expr> <c-space> coc#refresh()
