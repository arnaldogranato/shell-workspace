syntax on
set nowrap
set tabstop=4                 " -Quantidade de espaços por indentação
set shiftwidth=4              " -Define o tamanho da identação em 4 espaços   
set ignorecase                " -Ignora sensitive case, apenas na pesquisa?
set nocompatible              " -Desabilitar Compatibilidade com o Vi para habilitar funcionalidades avançadas do Vim.
set term=xterm-256color       " -Configurar corretamente a detecção de cores.
set incsearch                 " -realçar correspondências de pesquisa enquanto você digita


" -BACKUP
set backup
set backupdir=/var/tmp/
" Adiciona a data e hora ao nome do arquivo de backup
let &backupext = '.' . strftime('%Y%m%d%H%M%S')
" set writebackup
" set backupcopy=yes

" -Para configurar as cores no VimDiff
highlight DiffAdd      ctermfg=NONE ctermbg=Green   guifg=NONE guibg=#00FF00
highlight DiffChange   ctermfg=NONE ctermbg=Cyan    guifg=NONE guibg=#00FFFF
highlight DiffDelete   ctermfg=NONE ctermbg=Red     guifg=NONE guibg=#FF0000
highlight DiffText     ctermfg=NONE ctermbg=Yellow  guifg=NONE guibg=#FFFF00
" -ctermfg: Cor do texto no terminal (usada quando a cor não é suportada no GUI).
" -ctermbg: Cor do fundo no terminal (usada quando a cor não é suportada no GUI).
" -guifg: Cor do texto no GUI (ambiente gráfico).
" -guibg: Cor do fundo no GUI.


" -https://github.com/junegunn/vim-plug
call plug#begin()
Plug 'terryma/vim-multiple-cursors'
Plug 'jiangmiao/auto-pairs'
" - Este plugin melhora drasticamente a aparência e a funcionalidade da barra de status do Vim 
Plug 'vim-airline/vim-airline'
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop'  }
call plug#end()

" - Este bloco de código é um autocomando que é executado quando o Vim é iniciado (VimEnter). 
" - Ele verifica se algum dos plugins listados no seu vimrc não foi instalado (ou seja, se o diretório do plugin não existe). 
" - Se algum plugin estiver faltando, ele executa PlugInstall --sync, que instala os plugins ausentes de forma síncrona (aguardando a conclusão da instalação).
autocmd VimEnter *
			\  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
			\|   PlugInstall --sync | q
			\| endif


