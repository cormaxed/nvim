set scrolloff=8
set number
set relativenumber

set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

set shell=zsh

autocmd Filetype ejs setlocal ts=2 sw=2 expandtab
autocmd Filetype javascript setlocal ts=2 sw=2 expandtab
autocmd Filetype typescript setlocal ts=2 sw=2 expandtab
autocmd Filetype html setlocal ts=2 sw=2 expandtab
autocmd Filetype json setlocal ts=2 sw=2 expandtab
"autocmd BufNewFile,BufRead *.ejs set syntax=html
autocmd Filetype markdown set wrap linebreak
autocmd BufEnter *.png,*.jpg,*gif exec "! ~/.iterm2/imgcat ".expand("%") | :bw

autocmd TextYankPost * if v:event.operator is 'y' && v:event.regname is '' | OSCYankReg " | endif"
set clipboard& clipboard^=unnamed,unnamedplus

if has("autocmd")
  augroup templates
    autocmd BufNewFile .vimspector.json 0r ~/.vim/templates/.vimspector.json
  augroup END
endif

        "Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
        "Plug 'junegunn/fzf.vim'
call plug#begin('~/.vim/plugged')
    " Plugins that don't make sense in VsCode
    if !exists('g:vscode')
        Plug 'nvim-lua/plenary.nvim'
        Plug 'nvim-telescope/telescope.nvim'
        Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
        Plug 'ayu-theme/ayu-vim'
        Plug 'tpope/vim-fugitive'
        Plug 'neoclide/coc.nvim', {'branch': 'release'}
        Plug 'nvim-lua/popup.nvim'
        Plug 'nvim-lua/plenary.nvim'
        Plug 'nvim-telescope/telescope.nvim'
        Plug 'vim-airline/vim-airline'
        Plug 'christoomey/vim-tmux-navigator'
        Plug 'SirVer/ultisnips'
        Plug 'honza/vim-snippets'
        Plug 'puremourning/vimspector'
        Plug 'vimwiki/vimwiki'
        Plug 'romgrk/todoist.nvim', { 'do': ':TodoistInstall' }
        Plug 'liuchengxu/vim-clap'
        Plug 'vim-scripts/loremipsum'
        Plug 'godlygeek/tabular'
        Plug 'blindFS/vim-taskwarrior'
        Plug 'preservim/nerdtree'
        Plug 'ojroques/vim-oscyank'
        Plug 'nikvdp/ejs-syntax'
    endif
call plug#end()

let mapleader = " "
exec 'source' . '~/.config/nvim/coc.vim'
exec 'source' . '~/.config/nvim/telescope.vim'
exec 'source' . '~/.config/nvim/keymaps.vim'
exec 'source' . '~/.config/nvim/git.vim'
exec 'source' . '~/.config/nvim/viminspector.vim'
exec 'source' . '~/.config/nvim/todoist.vim'
exec 'source' . '~/.config/nvim/nerdtree.vim'

let g:UltiSnipsExpandTrigger="<tab>"
" list all snippets for current filetype
let g:UltiSnipsListSnippets="<c-l>"

set termguicolors     " enable true colors support
let ayucolor="dark"   " for dark version of theme
colorscheme ayu
let g:airline_powerline_fonts = 1

let g:vimwiki_global_ext = 0
let g:vimwiki_list = [{'path': '~/omahoco/vimwiki/',
                         \ 'syntax': 'markdown', 'ext': '.md'}]

