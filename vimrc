set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

call vundle#end()
filetype plugin indent on
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set bg=dark
set t_Co=256
set laststatus=2
set mouse=a
let g:rehash256 = 1
let g:hybrid_use_iTerm_colors = 1
colorscheme hybrid 
syntax enable
set number
set noshowmode
set runtimepath^=~/.vim/bundle/ctrlp.vim

"tab setup
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

"syntax highlighting
au BufNewFile,BufRead *.less set filetype=less

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
