set nocompatible
filetype off
filetype plugin on
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

"SuperTab
set omnifunc=syntaxcomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabContextDefaultCompletionType = "<c-p>"
let g:SuperTabCompletionContexts = ['s:ContextText', 's:ContextDiscover']
let g:SuperTabContextDiscoverDiscovery = ["&omnifunc:<c-x><c-o>"]
set completeopt-=preview

autocmd FileType *
    \ if &omnifunc != '' |
    \    call SuperTabChain(&omnifunc, '<c-p>') |
    \    call SuperTabSetDefaultCompletionType('<c-x><c-u>') |
    \ endif

"NerdTree
nmap <C-n> :NERDTreeToggle<CR>

"Tagbar
nmap <C-c> :TagbarToggle<CR>

"syntax highlighting
au BufNewFile,BufRead *.less set filetype=less

"buffer navigation
nnoremap <C-l>  :bn<CR>
nnoremap <C-h>  :bp<CR>

nnoremap <S-t>  :tabnew<CR><CR>

nmap ; :
imap ii <ESC>

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
nmap <S-up> :split<cr>
nmap <S-down> :split<cr><c-w><down>
nmap <S-left> :vsplit<cr>
nmap <S-right> :vsplit<cr><c-w><right>

"move to panes
nmap <S-k> <C-W><UP>
nmap <S-j> <C-W><DOWN>
nmap <S-h> <C-W><LEFT>
nmap <S-l> <C-W><RIGHT>

"search
let g:ctrlp_use_caching = 1
let g:ctrlp_cmd = 'CtrlPMixed'
let g:ctrlp_working_path_mode = 'r'

if executable('ag')
    set grepprg=ag\ --nogroup\ --context
    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
    lef g:ctrlp_use_caching = 0
endif

"remove whitespace
autocmd BufWritePre <buffer> :%s/\s\+$//e

"open quickfix window on grep
autocmd QuickFixCmdPost *grep* cwindow

