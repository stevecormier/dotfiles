set nocompatible
filetype off
filetype plugin indent on
execute pathogen#infect()

set encoding=utf-8
set t_Co=256
set laststatus=2
set mouse=a
let g:airline_powerline_fonts = 1
let g:airline_theme = 'bubblegum'
let g:airline#extensions#tabline#enabled = 1
let g:airline_detect_whitespace = 0
let g:hybrid_use_iTerm_colors = 1
colorscheme hybrid 
syntax enable

set autoindent
set number
set nowrap
set noshowmode
set cursorline
set nostartofline
set nobackup
set noswapfile
set hlsearch
set ignorecase
set incsearch

"tab setup
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

"syntax highlighting
au BufNewFile,BufRead *.less set filetype=less

"tab navigation
nnoremap <C-S-Tab> :tabprevious<CR>
nnoremap <C-Tab>   :tabnext<CR>
nnoremap <C-t>     :tabnew<CR>
inoremap <C-S-Tab> <Esc>:tabprevious<CR>i
inoremap <C-Tab>   <Esc>:tabnext<CR>i
inoremap <C-t>     <Esc>:tabnew<CR>

"press enter to clear seach highlights
nnoremap <CR> :noh<CR><CR>

map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

"search
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
