" ~/.vimrc

" General {{{

set nocompatible
set encoding=utf-8
execute pathogen#infect()
set mouse=a
set virtualedit=all
set modelines=1
set clipboard=unnamed
"remove whitespace
autocmd BufWritePre <buffer> :%s/\s\+$//e
nmap ; :
imap ii <ESC>
let mapleader=","
runtime macros/matchit.vim

" }}}

" UI {{{

set number
set cursorline
set showmode
set nowrap
set ttyfast
set laststatus=2
set wildmenu

" }}}

" Colors {{{

set background=dark
set t_Co=256
colorscheme hybrid
let g:hybrid_use_iTerm_colors = 1
syntax enable
au BufNewFile,BufRead *.less set filetype=less

" }}}

" Spaces & Tabs {{{

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent
set backspace=indent,eol,start
filetype plugin on
filetype indent on
"stay in visual mode when indenting
vnoremap < <gv
vnoremap > >gv

" }}}

" Backup {{{

set nobackup
set nowritebackup
set noswapfile

" }}}

" Folding {{{

set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=marker
set foldmarker={,}
nnoremap <space> za

" }}}

" Terminal {{{
if exists(':tnoremap')
    :tnoremap <Esc> <C-\><C-n>
endif

" }}}

" NerdTree {{{

map <C-n> :NERDTreeToggle<CR>

" }}}

" Tagbar {{{

nmap <C-c> :TagbarToggle<CR>

" }}}

" Buffers {{{

"buffer navigation
nnoremap <C-l>  :bn<CR>
nnoremap <C-h>  :bp<CR>

" }}}

" Panes {{{

set splitbelow
set splitright

" }}}

" Search {{{

set showmatch
set ignorecase
set smartcase
set incsearch
set hlsearch

" center search term
nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # hzz

"press enter to clear seach highlights
nnoremap <CR> :noh<CR><CR>

"CtrlP
let g:ctrlp_use_caching = 1
let g:ctrlp_cmd = 'CtrlPMixed'
let g:ctrlp_working_path_mode = 'r'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']

" }}}

" vim:foldmethod=marker:foldmarker={{{,}}}
