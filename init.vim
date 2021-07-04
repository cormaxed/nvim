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
        Plug 'nvim-lua/popup.nvim'
        Plug 'nvim-lua/plenary.nvim'
        Plug 'nvim-telescope/telescope.nvim'
    endif
call plug#end()

let mapleader = " "
exec 'source' . '~/.config/nvim/coc.vim'
exec 'source' . '~/.config/nvim/telescope.vim'
exec 'source' . '~/.config/nvim/keymaps.vim'

set termguicolors     " enable true colors support
let ayucolor="dark"   " for dark version of theme
colorscheme ayu

