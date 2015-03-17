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
set noshowmode
set nowrap
set ttyfast
set laststatus=2
set wildmenu

" }}}

" Colors {{{

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

" Airline {{{

let g:airline_powerline_fonts = 1
let g:airline_theme = 'serene'
let g:airline#extensions#tabline#enabled = 1
let g:airline_detect_whitespace = 0

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

" NerdTree {{{

map <C-n> :NERDTreeToggle<CR>

" }}}

" Tagbar {{{

nmap <C-c> :TagbarToggle<CR>

" }}}

" YouCompleteMe {{{

set completeopt-=preview
let g:ycm_add_preview_to_completeopt=0

" }}}

" UltiSnips {{{

let g:UltiSnipsExpandTrigger = "<nop>"
let g:ulti_expand_or_jump_res = 0
function ExpandSnippetOrCarriageReturn()
    let snippet = UltiSnips#ExpandSnippetOrJump()
    if g:ulti_expand_or_jump_res > 0
        return snippet
    else
        return "\<CR>"
    endif
endfunction
inoremap <expr> <CR> pumvisible() ? "<C-R>=ExpandSnippetOrCarriageReturn()<CR>" : "\<CR>"

" }}}

" Buffers {{{

"buffer navigation
nnoremap <C-l>  :bn<CR>
nnoremap <C-h>  :bp<CR>

" }}}

" Tabs {{{

nnoremap <S-t>  :tabnew<CR><CR>

" }}}

" Panes {{{

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

" vim:foldmethod=marker:foldlevel=0:foldmarker={{{,}}}
