set nocompatible
filetype off
filetype plugin indent on
execute pathogen#infect()

set encoding=utf-8
set t_Co=256
set laststatus=2
set mouse=a
set ve=all
let g:hybrid_use_iTerm_colors = 1
colorscheme hybrid

let g:airline_powerline_fonts = 1
let g:airline_theme = 'serene'
let g:airline#extensions#tabline#enabled = 1
let g:airline_detect_whitespace = 0
syntax enable

set autoindent
set number
set nowrap
set noshowmode
set cursorline
set nostartofline
set nobackup
set nowritebackup
set noswapfile
set hlsearch
set ignorecase
set smartcase
set incsearch
set showmatch

"tab setup
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

"syntax highlighting
au BufNewFile,BufRead *.less set filetype=less

"tab navigation
nnoremap <S-t>  :tabnew<CR><CR>
nnoremap <C-l>  gt
nnoremap <C-h>  gT

nmap ; :

"press enter to clear seach highlights
nnoremap <CR> :noh<CR>

"stay in visual mode when indenting
vnoremap < <gv
vnoremap > >gv

"no arrow keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

"create panes
nmap <s-up> :split<cr>
nmap <s-down> :split<cr><c-w><down>
nmap <s-left> :vsplit<cr>
nmap <s-right> :vsplit<cr><c-w><right>

"move to panes
nmap <S-k> <C-W><UP>
nmap <S-j> <C-W><DOWN>
nmap <S-h> <C-W><LEFT>
nmap <S-l> <C-W><RIGHT>

"close panes
nmap <C-UP> <C-W><UP>:q<CR>
nmap <C-DOWN> <C-W><DOWN>:q<CR>
nmap <C-LEFT> <C-W><LEFT>:q<CR>
nmap <C-RIGHT> <C-W><RIGHT>:q<CR>

"search
let g:ctrlp_use_caching = 1

if executable('ag')
    set grepprg=ag\ --nogroup\ --nocolor
    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
    let g:ctrlp_use_caching = 0
endif

"exit insert mode with 1 esc
if ! has('gui_running')
    set ttimeoutlen=10
    augroup FastEscape
        autocmd!
        au InsertEnter * set timeoutlen=0
        au InsertLeave * set timeoutlen=1000
    augroup END
endif

"remove whitespace
autocmd BufWritePre <buffer> :%s/\s\+$//e

"open quickfix window on grep
autocmd QuickFixCmdPost *grep* cwindow
