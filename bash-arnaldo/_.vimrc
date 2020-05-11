syntax on
set number
set nowrap
set expandtab                 " Identa com espaços
set tabstop=4                 " Quantidade de espaços por indentação
set shiftwidth=4              " Define o tamanho da identação em 4 espaços   


" https://github.com/junegunn/vim-plug
call plug#begin()
Plug 'terryma/vim-multiple-cursors'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-capslock'
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop'  }
call plug#end()

autocmd VimEnter *
			\  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
			\|   PlugInstall --sync | q
			\| endif


let g:airline#extensions#capslock#enabled = 1
let g:airline#extensions#capslock#symbol = 'CAPS'


" https://github.com/Shougo/neobundle.vim
"if 0 | endif
"if &compatible
"set nocompatible               
"endif
"set runtimepath+=~/.vim/bundle/neobundle.vim/
"call neobundle#begin(expand('~/.vim/bundle/'))
"NeoBundleFetch 'Shougo/neobundle.vim'
"call neobundle#end()
"filetype plugin indent on
"NeoBundleCheck



