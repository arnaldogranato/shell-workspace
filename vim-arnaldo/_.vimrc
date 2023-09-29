syntax on
set backup
set backupdir=/var/tmp/
set writebackup
set backupcopy=yes
set nowrap
set expandtab                 " Identa com espaços
set tabstop=4                 " Quantidade de espaços por indentação
set shiftwidth=4              " Define o tamanho da identação em 4 espaços   
set ignorecase                " Ignora sensitive case, apenas na pesquisa?

"   Para configurar as cores no VimDiff
"   ctermfg: Cor do texto no terminal (usada quando a cor não é suportada no GUI).
"   ctermbg: Cor do fundo no terminal (usada quando a cor não é suportada no GUI).
"   guifg: Cor do texto no GUI (ambiente gráfico).
"   guibg: Cor do fundo no GUI.
    
highlight DiffAdd      ctermfg=NONE ctermbg=Green   guifg=NONE guibg=#00FF00
highlight DiffChange   ctermfg=NONE ctermbg=Cyan    guifg=NONE guibg=#00FFFF
highlight DiffDelete   ctermfg=NONE ctermbg=Red     guifg=NONE guibg=#FF0000
highlight DiffText     ctermfg=NONE ctermbg=Yellow  guifg=NONE guibg=#FFFF00


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


