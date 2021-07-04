set scrolloff=8
set number
set relativenumber

set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

call plug#begin('~/.vim/plugged')
    " Plugins that don't make sense in VsCode
    if !exists('g:vscode')
        Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
        Plug 'junegunn/fzf.vim'
        Plug 'ayu-theme/ayu-vim'
        Plug 'tpope/vim-fugitive'
        Plug 'neoclide/coc.nvim', {'branch': 'release'}
    endif
call plug#end()

let path = expand('%:p:h')
exec 'source' path . '/coc.vim'

set termguicolors     " enable true colors support
let ayucolor="dark"   " for dark version of theme
colorscheme ayu

let mapleader = " "
nnoremap <leader>pv :Vex<CR>
nnoremap <leader><CR> :so ~/.config/nvim/init.vim<CR>
nnoremap <C-p> :GFiles<CR>
nnoremap <leader>pf :Files<CR>
inoremap <C-c> <esc>
nnoremap <C-j> :cnext<CR>
nnoremap <C-k> :cprev<CR>

"paste but down update yank buffer
vnoremap <leader>p "_dP
vnoremap <leader>y "+y

"move and reindent in visual mode
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
