" === GERAL ===

syntax on
set nowrap
set tabstop=4                 " -Quantidade de espaços por indentação
set shiftwidth=4              " -Define o tamanho da identação em 4 espaços   
set ignorecase                " -Ignora sensitive case, apenas na pesquisa?
set nocompatible              " -Desabilitar Compatibilidade com o Vi para habilitar funcionalidades avançadas do Vim.
set term=xterm-256color       " -Configurar corretamente a detecção de cores.
set incsearch                 " -realçar correspondências de pesquisa enquanto você digita


" === BACKUP ===

set backup
set backupdir=/var/tmp/
let &backupext = '.' . strftime('%Y%m%d%H%M%S')  " data+hora


" === CURSOR ===

if &term =~ 'xterm\|rxvt'
    let &t_SI = "\e[5 q"  " Cursor piscante (barra vertical) em modo inserção
    let &t_SR = "\e[5 q"  " Cursor piscante (barra vertical) em modo substituição
    let &t_EI = "\e[1 q"  " Cursor piscante (bloco) em modo normal
    autocmd VimLeave * silent !echo -ne "\e[0 q"
endif


" === PYTHON ===

autocmd FileType python map <buffer> <C-k> :call flake8#Flake8()<CR>  " atalho Ctrl+k para revisão flake8


" === CORES VIMDIFF ===

colorscheme desert " ou outro tema de sua preferência
" Melhorar o contraste no vimdiff
highlight DiffAdd    cterm=bold ctermfg=Black ctermbg=LightGreen gui=none guifg=#000000 guibg=#90EE90
highlight DiffDelete cterm=bold ctermfg=Black ctermbg=LightRed gui=none guifg=#000000 guibg=#FF9999
highlight DiffChange cterm=bold ctermfg=Black ctermbg=LightYellow gui=none guifg=#000000 guibg=#FFFFE0
highlight DiffText   cterm=bold ctermfg=White ctermbg=DarkRed gui=none guifg=#FFFFFF guibg=#A52A2A
" -ctermfg: Cor do texto no terminal (usada quando a cor não é suportada no GUI).
" -ctermbg: Cor do fundo no terminal (usada quando a cor não é suportada no GUI).
" -guifg: Cor do texto no GUI (ambiente gráfico).
" -guibg: Cor do fundo no GUI.


" === COPY ===

" quando estiver no modo cisual (vnoremap) o Ctrl+c (<C-c>) copia a área
" selecionada ('<,'>)
if executable('clip.exe')
    vnoremap <C-c> :w !clip.exe<CR>
elseif executable('pbcopy')
    vnoremap <C-c> :w !pbcopy<CR>
endif


" === PLUGINS ===

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

" === NOTA ===
" No terminal, o comando correto para recarregar a configuração
" vim -c \"source ~/.vimrc\"
" Ou, dentro do Vim
" :so ~/.vimrc
