syntax on
set nowrap
set expandtab                 " Identa com espaços
set tabstop=4                 " Quantidade de espaços por indentação
set shiftwidth=4              " Define o tamanho da identação em 4 espaços   
set ignorecase                " Ignora sensitive case, apenas na pesquisa?

" https://github.com/junegunn/vim-plug
 
call plug#begin()
Plug 'terryma/vim-multiple-cursors'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop'  }
call plug#end()

autocmd VimEnter *
			\  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
			\|   PlugInstall --sync | q
			\| endif


