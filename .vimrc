set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Plugin 'vundle.vim'
Plugin 'Valloric/YouCompleteMe'
"Bundle 'Valloric/YouCompleteMe'
Bundle 'The-NERD-tree'
Bundle 'The-NERD-Commenter'

set autochdir
let mapleader=","
let NERDTreeChDirMode=2
nnoremap <leader>file :NERDTree .<CR>


filetype plugin indent on     " required!

let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>



nmap    w,  :vertical resize -3<CR>
nmap    w.  :vertical resize +3<CR>


""""""""""""""
"Common Config
""""""""""""""
set nu
set encoding=utf-8 fileencodings=ucs-bom,utf-8,cp936
set autoindent
set tabstop=4
set sw=4
sy on
:map<F3> 0I# <Esc>
:map <F7> 0i#<Esc>
:map <F8> i(<Esc>wwi)<Esc>

map <F5> :call CompileRunGcc()<CR>
func! CompileRunGcc()
	exec "w"
	if &filetype == 'c'
		exec "!g++ % -o %<"
		exec "!time ./%<"
	elseif &filetype == 'cpp'
		exec "!g++ % -o %<"
		exec "!time ./%<"
	elseif &filetype == 'java'
		exec "!javac %"
		exec "!time java %<"
	elseif &filetype == 'sh'
		:!time bash %
	elseif &filetype == 'python'
		exec "!time python2.7 %"
	elseif &filetype == 'html'
		exec "!firefox % &"
	elseif &filetype == 'go'
		"        exec "!go build %<"
		exec "!time go run %"
	elseif &filetype == 'mkd'
		exec "!~/.vim/markdown.pl % > %.html &"
		exec "!firefox %.html &"
	endif
endfunc

set hlsearch
vnoremap <silent> # :s/^/#/<cr>:noh<cr>
vnoremap <silent> -# :s/^#//<cr>:noh<cr>
set timeoutlen=0 ttimeoutlen=0

nnoremap <CR> G
nnoremap <leader>w :wq<CR>
set foldmethod=indent
nnoremap 0 ^
nnoremap ^ 0
