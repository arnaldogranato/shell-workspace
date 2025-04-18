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
let &t_SI = "\e[5 q" " Cursor piscante (barra vertical) em modo inserção
let &t_SR = "\e[5 q" " Cursor piscante (barra vertical) em modo substituição
let &t_EI = "\e[1 q" " Cursor piscante (bloco) em modo normal
autocmd VimLeave * silent !echo -ne "\e[0 q"
autocmd FileType python map <buffer> <C-k> :call flake8#Flake8()<CR>  " atalho flake8 Ctrl+K
" set writebackup
" set backupcopy=yes

" Ativar sintaxe e tema de cores
colorscheme desert " ou outro tema de sua preferência

" -Para configurar as cores no VimDiff
"highlight DiffAdd      ctermfg=NONE ctermbg=Green   guifg=NONE guibg=#00FF00
"highlight DiffChange   ctermfg=NONE ctermbg=Cyan    guifg=NONE guibg=#00FFFF
"highlight DiffDelete   ctermfg=NONE ctermbg=Red     guifg=NONE guibg=#FF0000
"highlight DiffText     ctermfg=NONE ctermbg=Yellow  guifg=NONE guibg=#FFFF00

" Melhorar o contraste no vimdiff
highlight DiffAdd    cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
highlight DiffDelete cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
highlight DiffChange cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
highlight DiffText   cterm=bold ctermfg=10 ctermbg=88 gui=none guifg=bg guibg=Red
" -ctermfg: Cor do texto no terminal (usada quando a cor não é suportada no GUI).
" -ctermbg: Cor do fundo no terminal (usada quando a cor não é suportada no GUI).
" -guifg: Cor do texto no GUI (ambiente gráfico).
" -guibg: Cor do fundo no GUI.

" quando estiver no modo cisual (vnoremap) o Ctrl+c (<C-c>) copia a área
" selecionada ('<,'>)
vnoremap <C-c> :w !clip.exe<CR>

" DOC. https://github.com/junegunn/vim-plug
" OBS. Para remover plug, DELETE a linha abra o vin novamente e :PlugClean
call plug#begin()
Plug 'terryma/vim-multiple-cursors'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'  " este melhora barra de status
call plug#end()

" - ABAIXO é um autocomando que é executado quando o Vim é iniciado (VimEnter). 
" - Ele verifica se algum dos plugins listados no seu vimrc não foi instalado (ou seja, se o diretório do plugin não existe). 
" - Se algum plugin estiver faltando, ele executa PlugInstall --sync, que instala os plugins ausentes de forma síncrona (aguardando a conclusão da instalação).
autocmd VimEnter *
			\  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
			\|   PlugInstall --sync | q
			\| endif


