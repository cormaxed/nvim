nnoremap <leader>fe :Vex<CR>
nnoremap <leader><CR> :so ~/.config/nvim/init.vim<CR>
nnoremap <C-p> :GFiles<CR>
nnoremap <leader>ff :Files<CR>
nnoremap <leader>fi :Rg<CR>

inoremap <C-c> <esc>
nnoremap <C-j> :cnext<CR>
nnoremap <C-k> :cprev<CR>

"paste but don't update yank buffer
vnoremap <leader>p "_dP
vnoremap <leader>y "+y

"move and reindent in visual mode
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

"faster save and exit
inoremap <C-s> <esc>:w<cr>                 " save files
nnoremap <C-s> :w<cr>
