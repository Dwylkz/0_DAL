"Setting
colorscheme desert
syntax on
filetype on
filetype plugin indent on
set autochdir
set foldmethod=syntax
set incsearch
set nocompatible
set noswapfile
set number
set shiftwidth=2
set tabstop=2
set autoindent
set smartindent

""Browser
let g:netrw_liststyle=3
let mapleader=","

"Function
func! ErrorList()
	exec "clist"
endfunc
func! Make(target)
	exec "w"
	exec "make!" a:target
endfunc
func! Browser()
	exec "15vs ."
endfunc

"Map
""Basic
imap jj <ESC>
map <C-a> ggVG
vmap <C-y> "+y
map <C-p> "+p
map <F3> <ESC>:tabe  
map <F4> <ESC>:tabp<CR>
map <F5> <ESC>:tabn<CR>
map <F2> <ESC>:call Browser()<CR>
map <F8> <ESC>:call ErrorList()<CR>
""Make
map <C-F8> <ESC>:call Make("debug")<CR>
map <F9> <ESC>:call Make("")<CR>
map <C-F9> <ESC>:call Make("run")<CR>
map <F10> <ESC>:call Make("test")<CR>
""Doxygen
nmap <leader>a :DoxAuthor<CR>
nmap <leader>d :Dox<CR>
nmap <leader>l :DoxLic<CR>

"Abbreviate
autocmd BufReadPre,BufRead,BufWrite,BufNew *.qml :set filetype=qml
