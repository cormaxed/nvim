nnoremap <leader>pv :Vex<CR>
nnoremap <leader><CR> :so ~/.config/nvim/init.vim<CR>
nnoremap <C-p> :GFiles<CR>
nnoremap <leader>ff :Files<CR>
nnoremap <leader>fs :Rg<CR>

inoremap <C-c> <esc>
nnoremap <C-j> :cnext<CR>
nnoremap <C-k> :cprev<CR>

"paste but down update yank buffer
vnoremap <leader>p "_dP
vnoremap <leader>y "+y

"move and reindent in visual mode
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
