---
title: Guia Rápido de Comandos Essenciais do Vim
date: 2023-10-27
tags: [vim, editor, terminal, produtividade, atalhos]
category: Ferramentas
status: revisado
related: []
---

# Guia Rápido de Comandos Essenciais do Vim

E aí, futuro mestre do Vim! Este é um guia pra você que quer dominar esse editor poderoso sem perder muito tempo. Aqui, a gente vai direto ao ponto, com os comandos mais usados e umas dicas pra turbinar sua produtividade. Bora lá!

## 1. Abrindo o Vim (e suas opções)

Pra começar a brincadeira, você pode abrir o Vim de várias formas:

*   `vim nome_do_arquivo`: Abre o arquivo pra editar.
*   `view nome_do_arquivo` ou `vim -R nome_do_arquivo`: Abre o arquivo só pra leitura (não dá pra salvar alterações).
*   `vimdiff arquivo1 arquivo2`: Compara dois arquivos e mostra as diferenças (ótimo pra merges!).
*   `vim -b nome_do_arquivo`: Abre um arquivo binário (tipo imagens ou executáveis).
*   `vim +n nome_do_arquivo`: Abre o arquivo e já pula pra linha `n`.
*   `vim -r`: Recupera a última versão de um arquivo que você estava editando (se o Vim crashou, por exemplo).

## 2. Navegação (Andando pelo arquivo como um ninja)

Esqueça o mouse! No Vim, você se move com o teclado. Lembre-se: `h` (esquerda), `j` (baixo), `k` (cima), `l` (direita).

### 2.1. Movendo o Cursor

*   `h`, `j`, `k`, `l`: Pra se mover caractere por caractere.
*   `0` ou `HOME`: Vai pro começo da linha.
*   `^`: Vai pro primeiro caractere não-branco da linha.
*   `$`: Vai pro final da linha.
*   `w`: Pula pra próxima palavra.
*   `b`: Volta pra palavra anterior.
*   `W`, `B`: Igual `w` e `b`, mas considera pontuação como parte da palavra.
*   `H`: Vai pro topo da tela.
*   `M`: Vai pro meio da tela.
*   `L`: Vai pro final da tela.
*   `ctrl+u`: Rola a tela pra cima (meia página).
*   `ctrl+d`: Rola a tela pra baixo (meia página).
*   `G`: Vai pro final do arquivo. Se usar `10G`, vai pra linha 10.
*   `)`: Vai pro começo da próxima frase.
*   `(`: Volta pro começo da frase anterior.
*   `}`: Vai pro começo do próximo parágrafo/bloco de texto.
*   `{`: Volta pro começo do parágrafo/bloco de texto anterior.

## 3. Modo de Inserção (A hora de digitar!)

Pra começar a escrever, você precisa entrar no modo de inserção. Aperte `Esc` pra sair dele e voltar pro modo normal.

*   `i`: Insere texto **antes** do cursor.
*   `a`: Insere texto **depois** do cursor.
*   `I`: Insere texto no **começo da linha**.
*   `A`: Insere texto no **final da linha**.
*   `o`: Cria uma **nova linha abaixo** e entra no modo de inserção.
*   `O`: Cria uma **nova linha acima** e entra no modo de inserção.
*   `gf`: Abre o arquivo que está sob o cursor (se for um caminho válido).
*   `gi`: Volta pro último ponto onde você estava digitando.

## 4. Edição Básica (Cortar, Copiar, Colar e Desfazer)

Esses são os comandos que você vai usar pra manipular o texto.

*   `yy`: Copia a linha inteira.
*   `yw`: Copia uma palavra.
*   `y$`: Copia do cursor até o final da linha.
*   `dd`: Deleta a linha inteira.
*   `dw`: Deleta uma palavra.
*   `D`: Deleta do cursor até o final da linha.
*   `d0`: Deleta do cursor até o começo da linha.
*   `dgg`: Deleta do cursor até o começo do arquivo.
*   `dG`: Deleta do cursor até o final do arquivo.
*   `x`: Deleta um caractere.
*   `p`: Cola o conteúdo copiado/deletado **depois** do cursor.
*   `P`: Cola o conteúdo copiado/deletado **antes** do cursor.
*   `u`: Desfaz a última ação (o famoso `Ctrl+Z`).
*   `ctrl+r`: Refaz a última ação desfeita (o `Ctrl+Y`).
*   `.`: Repete a última ação (muito útil!).
*   `cc`: Limpa a linha e entra no modo de inserção.

## 5. Modo Visual (Selecionando blocos de texto)

Pra selecionar texto, use o modo visual. Depois de selecionar, você pode copiar (`y`), deletar (`d`), etc.

*   `v`: Seleciona caractere por caractere.
*   `V`: Seleciona a linha inteira.
*   `ctrl+v`: Seleciona em bloco (retangular).
*   `r`: Troca um caractere pelo que você digitar em seguida.
*   `R`: Entra no modo de substituição (digita por cima do texto existente).
*   `~`: Inverte maiúsculas/minúsculas do caractere sob o cursor.
*   `t[char]`: Seleciona até (mas não inclui) o próximo `[char]` na linha.
*   `f[char]`: Seleciona até (e inclui) o próximo `[char]` na linha.
*   `i[char]`: Seleciona tudo **dentro** de um par de `[char]` (ex: `i(` seleciona o texto dentro dos parênteses).
*   `a[char]`: Seleciona tudo **incluindo** o par de `[char]` (ex: `a(` seleciona o texto e os parênteses).

## 6. Busca e Substituição (Achando e trocando coisas)

Esses comandos são poderosos pra navegar e alterar grandes volumes de texto.

### 6.1. Buscando

*   `/palavra`: Procura por "palavra" pra frente (do cursor pro final do arquivo).
*   `?palavra`: Procura por "palavra" pra trás (do cursor pro começo do arquivo).
*   `n`: Vai pra próxima ocorrência da busca.
*   `N`: Volta pra ocorrência anterior da busca.
*   `:/Mari[oa]`: Procura por "Maria" ou "Mario".
*   `:/\c`: Faz a busca ignorando maiúsculas/minúsculas.
*   `:/\<pal`: Procura palavras que começam com "pal".
*   `:/ismo\>`: Procura palavras que terminam com "ismo".
*   `:/\<palavra\>`: Procura a palavra exata "palavra".
*   `:/\<...\>`: Procura palavras com exatamente 3 letras.
*   `:/maria\|joao`: Procura por "maria" OU "joao".
*   `:/\<\d\d\d\d\>`: Procura por 4 dígitos numéricos seguidos.
*   `:/^\n\{3}`: Procura por 3 linhas em branco seguidas.
*   `:bufdo /texto/`: Procura por "texto" em todos os arquivos abertos (buffers).

### 6.2. Substituindo

*   `:%s/antigo/novo/g`: Substitui **todas** as ocorrências de "antigo" por "novo" no arquivo inteiro.
*   `:%s/antigo/novo/gw`: Substitui todas as ocorrências, mas **pede confirmação** pra cada uma.
*   `:2,35s/antigo/novo/g`: Substitui só entre as linhas 2 e 35.
*   `:5,$s/antigo/novo/g`: Substitui da linha 5 até o final do arquivo.
*   `:%s/^/legal/g`: Adiciona "legal" no começo de cada linha.
*   `:%s/$/Oh/g`: Adiciona "Oh" no final de cada linha.
*   `:%s/antigo/novo/gi`: Substitui ignorando maiúsculas/minúsculas.
*   `:%s/ *$//g`: Apaga todos os espaços em branco no final das linhas.
*   `:g/string/d`: Deleta todas as linhas que contêm "string".
*   `:g/^.\{,7}$/d`: Deleta linhas com menos de 7 caracteres.

## 7. Arquivos, Buffers e Abas (Organizando seu trabalho)

O Vim é mestre em trabalhar com vários arquivos ao mesmo tempo.

### 7.1. Buffers (Arquivos abertos na memória)

*   `:ls`: Lista todos os buffers abertos.
*   `:bn`: Vai pro próximo buffer.
*   `:bp`: Volta pro buffer anterior.
*   `:bd`: Fecha o buffer atual (se não tiver salvo, vai reclamar).
*   `:e nome_do_arquivo`: Abre um arquivo (se não existir, cria).
*   `:w nome_do_arquivo`: Salva o conteúdo atual em um novo arquivo.

### 7.2. Abas (Tabs)

*   `:tabnew`: Abre uma nova aba vazia.
*   `:tabnew nome_do_arquivo`: Abre um arquivo em uma nova aba.
*   `gt`: Vai pra próxima aba.
*   `gT`: Volta pra aba anterior.
*   `:tabfirst`: Vai pra primeira aba.
*   `:tablast`: Vai pra última aba.
*   `:tabm n`: Move a aba atual pra posição `n`.
*   `:tabdo %s/foo/bar/g`: Executa um comando em **todas** as abas abertas.
*   `:tab ball`: Coloca cada buffer aberto em uma aba separada.

### 7.3. Janelas (Dividindo a tela)

*   `:sp nome_do_arquivo` ou `ctrl+ws`: Divide a tela horizontalmente e abre um arquivo.
*   `:vsp nome_do_arquivo` ou `ctrl+wv`: Divide a tela verticalmente e abre um arquivo.
*   `ctrl+ww`: Alterna entre as janelas.
*   `ctrl+wq`: Fecha a janela atual.
*   `ctrl+wh`, `ctrl+wl`, `ctrl+wj`, `ctrl+wk`: Move o cursor entre as janelas (esquerda, direita, baixo, cima).

## 8. Salvando e Saindo (A hora de ir embora)

*   `:w`: Salva o arquivo atual.
*   `:wq`: Salva e sai do Vim.
*   `ZZ`: O mesmo que `:wq` (atalho rápido).
*   `:q`: Sai do Vim (só se não tiver alterações não salvas).
*   `:q!`: Sai do Vim **sem salvar** (força a saída).
*   `:qa!`: Fecha **todas** as abas e buffers, forçando a saída.

## 9. Configurações (Deixando o Vim com a sua cara)

Você pode mudar o comportamento do Vim na hora (`:` antes do comando) ou deixar fixo no seu arquivo de configuração `~/.vimrc` (sem o `:`).

*   `:set number` ou `:set nu`: Mostra o número das linhas.
*   `:set nonumber` ou `:set nonu`: Esconde o número das linhas.
*   `:set nowrap`: Desativa a quebra de linha automática.
*   `:set wrap`: Ativa a quebra de linha automática.
*   `:set ignorecase`: Ignora maiúsculas/minúsculas nas buscas.
*   `:set smartcase`: Ignora maiúsculas/minúsculas, a não ser que você use uma letra maiúscula na busca.
*   `:set linebreak`: Quebra a linha sem cortar as palavras.
*   `:set nobackup`: Não cria arquivos de backup (`~`).
*   `:set wildmode=longest,list`: Completa comandos com `TAB` (tipo no Bash).
*   `:set gdefault`: Faz com que o `s` (substituir) sempre troque todas as ocorrências na linha (como se fosse `g`).
*   `:set smartindent`: Auto-indentação inteligente.
*   `:set expandtab`: Usa espaços em vez de tabulações.
*   `:set tabstop=2`: Define o tamanho da tabulação para 2 espaços.
*   `:set shiftwidth=2`: Define o tamanho da indentação automática para 2 espaços.
*   `:set autochdir`: Muda pro diretório do arquivo que você abriu.
*   `:set cursorline`: Destaca a linha onde o cursor está.
*   `:set hlsearch`: Destaca todos os termos encontrados na busca.
*   `:set spelllang=pt`: Ativa o corretor ortográfico em português.
*   `:set foldenable`: Habilita o agrupamento de blocos de código (folds).
*   `:set foldmethod=marker`: Define o método de fold por marcadores (ex: `{}`).
*   `:set fileformat=unix` ou `:set ff=unix`: Garante que o arquivo tenha formato de linha Unix.

## 10. Macetes e Truques (Pra impressionar a galera)

*   `:put =range(1,10)`: Insere uma lista de números (de 1 a 10) no arquivo.
*   `:for i in range(1,10) | put ='192.168.0.'.i | endfor`: Gera uma lista de IPs (de 192.168.0.1 a 192.168.0.9).
*   `:%!fmt`: Formata o arquivo inteiro (se tiver um formatador configurado).
*   `:%!column -s ';' -t`: Formata um CSV (separado por `;`) em colunas alinhadas.
*   `:e ++enc=latin1`: Recarrega o arquivo com codificação ISO 8859-1.
*   `:w ++enc=latin1`: Salva o arquivo com codificação ISO 8859-1.

## 11. Comandos de Sobrevivência (Quando o bicho pega)

*   `ctrl+z`: Suspende o Vim e volta pro terminal (use `fg` pra voltar pro Vim).
*   `:help [comando]`: Abre a ajuda do Vim pra um comando específico (ex: `:help wq`). Essencial!

## 12. Outros

Com base nos arquivos fornecidos, preparei um complemento em Markdown contendo os comandos e configurações presentes no **"nota_vim.txt"** que não foram incluídos no seu **"Guia Rápido de Comandos Essenciais"**.

---

## Comandos Adicionais e Avançados do Vim

Este guia complementa o essencial com funções de personalização, manipulação de texto via regex e truques de produtividade.

### 1. Opções de Inicialização e Segurança
*   **-h**: Exibe todas as opções de inicialização do aplicativo.
*   **-R**: Abre o arquivo em modo apenas leitura (similar ao `view`).
*   **:X**: Permite criptografar o arquivo atual com uma senha.

### 2. Navegação e Repetição
*   **CTRL+B / CTRL+F**: Rola a tela uma página inteira para trás ou para frente, respectivamente.
*   **F1**: Abre a tela de ajuda padrão do Vim.
*   **[n]+ENTER**: Move o cursor para *n* linhas abaixo da posição atual.
*   **[n]+.**: Repete o último comando de alteração de texto *n* vezes.

### 3. Manipulação Avançada de Texto (Case e Formatação)
Além do comando `~`, você pode usar:
*   **Vu / VU**: Torna todos os caracteres da linha atual minúsculos ou maiúsculos.
*   **g~~**: Inverte a caixa (maiúscula/minúscula) de todo o texto do arquivo.
*   **vEU**: Coloca as letras da palavra selecionada em maiúsculas.
*   **ggguG**: Converte o texto inteiro do arquivo para minúsculas.
*   **ggVGg?**: Aplica a cifra Rot13 ao texto selecionado.
*   **Ctrl+a / Ctrl+x**: Incrementa ou decrementa o número sob o cursor.

### 4. Busca e Substituição com Expressões Regulares
*   **:v/palavra/d**: Apaga todas as linhas que **não** contenham a "palavra".
*   **:%s#<[^>]\+>##g**: Remove todas as tags HTML, preservando apenas o conteúdo textual.
*   **:%s/^\(.*\)\n\1$ /\1/**: Localiza e remove linhas consecutivas repetidas.
*   **:%s/\r//g**: Remove retornos de carro (`\r`) típicos de arquivos criados no Windows.
*   **:%s/<./\u&/g**: Converte a primeira letra de cada palavra para maiúscula.

### 5. Explorando o Sistema e Gerenciamento de Arquivos
*   **:Sex**: Divide a janela horizontalmente e abre o explorador de arquivos integrado.
*   **:browse e**: Abre o gerenciador de arquivos na janela atual.
*   **:cd ..**: Sobe um nível na árvore de diretórios do sistema.
*   **:args**: Lista os arquivos que foram passados como argumento na abertura do Vim.
*   **:grep expressao *.php**: Busca uma expressão em todos os arquivos .php e retorna a lista.
*   **!!pwd**: Executa o comando `pwd` do sistema e insere o caminho resultante diretamente no texto.
*   **:sh**: Sai temporariamente para o terminal (use `exit` para retornar ao Vim).

### 6. Janelas, Buffers e Marcações
*   **ctrl-w_**: Maximiza a janela atual verticalmente.
*   **ctrl-w=**: Reajusta todas as janelas abertas para terem o mesmo tamanho.
*   **:sview arquivo**: Abre um arquivo em uma nova divisão, mas em modo somente leitura.
*   **:only**: Fecha todas as janelas abertas, mantendo apenas a atual.
*   **:b 2**: Muda para o buffer número 2 na janela ativa.
*   **mk / 'k**: Define uma marca na posição atual chamada "k" e permite pular para ela depois.
*   **dk**: Apaga todo o conteúdo desde a posição do cursor até a marca "k".

### 7. Configurações de Interface e Ferramentas
*   **:set termencoding=iso-8859-1**: Define a codificação do terminal.
*   **:set guioptions-=T**: Remove a barra de ferramentas (toolbar) da interface gráfica.
*   **:set pumheight=15**: Define o número máximo de itens exibidos no menu de autocomplete.
*   **:set completeopt=menu,preview**: Configura como as sugestões de inserção são exibidas.
*   **:ab email me@me.com**: Cria uma abreviação; ao digitar "email" e espaço, ele expande para o endereço.
*   **:%!python -m json.tool**: Utiliza o Python para formatar (identar) um arquivo JSON que esteja em uma única linha.
*   **:set syntax=perl**: Força o realce de sintaxe para uma linguagem específica.
---
