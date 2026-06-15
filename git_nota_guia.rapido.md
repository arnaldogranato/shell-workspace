---
title: Guia Rápido de Git para o Dia a Dia
date: 2023-10-27
tags: [git, versionamento, comandos, dicas, desenvolvimento]
category: Ferramentas
status: revisado
related: []
---

# Guia Rápido de Git para o Dia a Dia

E aí! Este é um guia prático e sem frescura para você que usa Git todo dia. Aqui, a gente vai direto ao ponto, com os comandos mais importantes e umas dicas pra não se enrolar. Bora lá!

## 1. Configurações Globais (Pra não ter que repetir)

Antes de começar a codar, é bom deixar o Git sabendo quem você é. Essas configurações valem pra todos os seus projetos.

### 1.1. Identificação Essencial

```bash
git config --global user.name "Seu Nome"
git config --global user.email seu.email@exemplo.com
```

**Importante:** Essas duas são obrigatórias! O Git usa elas pra marcar quem fez o quê nos commits.

### 1.2. Outras Configurações Úteis

*   **Editor Padrão:** Pra quando o Git precisar abrir um editor (tipo pra escrever mensagem de commit ou rebase).
    ```bash
git config --global core.editor vim
    ```
    (Se não curtir `vim`, pode trocar por `nano`, `code --wait`, etc.)

*   **Listar Configurações:** Quer ver o que já tá configurado? Usa esse:
    ```bash
git config --list
    ```

*   **Guardar Senha/Token (Cuidado!):** Pra não ter que digitar toda hora. O `cache` guarda por um tempo, o `store` guarda pra sempre (e fica num arquivo, então cuidado com quem acessa seu PC!).
    ```bash
git config --global credential.helper 'cache --timeout=3600' # Guarda por 1 hora (3600 segundos)
git config --global credential.helper store # Guarda pra sempre (use com MUITO cuidado!)
    ```

## 2. Comandos Básicos (O pão com manteiga do Git)

Esses são os comandos que você vai usar o tempo todo.

*   **Atualizar o Projeto (Puxar as novidades):**
    ```bash
git pull # Puxa as últimas alterações do repositório remoto
git pull --no-rebase # Puxa e junta suas alterações com as novas (cria um commit de merge)
    ```

*   **Clonar um Projeto:** Pra baixar um projeto que já existe lá no GitHub (ou outro lugar).
    ```bash
git clone https://github.com/usuario/repositorio.git
    ```

*   **Iniciar um Projeto (Monitorar uma pasta):** Se você tem uma pasta com código e quer que o Git comece a controlar as versões.
    ```bash
git init
    ```

*   **Ver o Status:** Pra saber o que você já mexeu, o que tá pronto pra ir pro commit, etc.
    ```bash
git status
    ```

*   **Ver as Diferenças:** Mostra exatamente o que você mudou nos arquivos.
    ```bash
git diff
    ```

*   **Adicionar Arquivos:** Pra dizer pro Git: "Ei, esse arquivo aqui eu quero que você fique de olho!"
    ```bash
git add nome_do_arquivo.txt # Adiciona um arquivo específico
git add . # Adiciona todos os arquivos alterados/novos na pasta atual
    ```

*   **Fazer um Commit:** Pra salvar suas mudanças com uma mensagem explicando o que você fez.
    ```bash
git commit -m "Minha mensagem de commit explicando as mudanças"
    ```

*   **Reorganizar Commits (Rebase Interativo):** Pra juntar vários commits pequenos em um só, ou mudar a ordem. **Cuidado:** só faça isso em commits que ainda não foram pro repositório remoto!
    ```bash
git rebase -i HEAD~3 # Abre um editor pra você mexer nos últimos 3 commits
    ```

*   **Guardar Mudanças Temporariamente (Stash):** Se você tá no meio de uma coisa, mas precisa mudar de branch rapidinho, usa o stash pra guardar suas alterações sem fazer commit.
    ```bash
git stash # Guarda as mudanças
git stash list # Vê o que você guardou
git stash apply # Aplica a última coisa que você guardou
git stash apply stash@{2} # Aplica um stash específico (o número entre chaves é o ID)
    ```

*   **Enviar as Mudanças (Push):** Pra mandar seus commits pro repositório remoto.
    ```bash
git push
git push -f # CUIDADO! Força o envio, pode sobrescrever o trabalho de outras pessoas. Use só se souber o que tá fazendo!
    ```

*   **Histórico de Commits (Log):** Pra ver tudo que já foi salvo no projeto.
    ```bash
git log # Histórico completo
git log --stat # Histórico com estatísticas de arquivos alterados
git log --oneline # Histórico resumido (uma linha por commit)
git log -3 # Mostra só os últimos 3 commits
git show id_do_commit # Mostra o que foi alterado em um commit específico
    ```

## 3. Trabalhando com Branches (Galhos do seu projeto)

Branches são ótimas pra trabalhar em novas funcionalidades sem bagunçar o código principal.

*   **Criar uma Branch:**
    ```bash
git branch nome_da_branch # Cria uma branch nova (localmente)
    ```

*   **Listar Branches:**
    ```bash
git branch # Lista as branches locais
git branch -a # Lista todas as branches (locais e remotas)
    ```

*   **Mudar de Branch:**
    ```bash
git checkout nome_da_branch # Entra na branch
git checkout -b nova_branch # Cria e já entra na nova branch
    ```

*   **Deletar uma Branch:**
    ```bash
git branch -d nome_da_branch # Deleta a branch local (só se ela já foi mergeada)
git branch -D nome_da_branch # Deleta a branch local na marra (mesmo que não tenha sido mergeada) - CUIDADO!
    ```

*   **Unir Branches (Merge):** Pra juntar as mudanças de uma branch em outra.
    ```bash
git merge nome_da_branch_a_unir # Junta a branch na sua branch atual
    ```

*   **Rebase (Outra forma de unir):** Reaplica seus commits em cima de outra branch, deixando o histórico mais linear. **Cuidado:** só faça em branches que você não compartilhou!
    ```bash
git rebase nome_da_branch_base # Reaplica seus commits em cima da branch base
    ```

*   **Ver Repositórios Remotos:**
    ```bash
git remote -v
    ```

*   **Pegar um Commit Específico (Cherry-pick):** Pra pegar um commit de uma branch e aplicar na sua, sem ter que mergear a branch inteira.
    ```bash
git cherry-pick id_do_commit
    ```

*   **Enviar Branch para o Remoto:** Pra criar a branch lá no GitHub (ou outro serviço).
    ```bash
git push -u origin nome_da_branch # Envia e já configura pra ser a branch de rastreamento
    ```

*   **Deletar Branch Remota:**
    ```bash
git push -d origin nome_da_branch # Deleta a branch lá no repositório remoto
    ```

## 4. Comandos de Emergência (Pra quando a coisa aperta)

Deu ruim? Calma! O Git tem uns comandos pra te salvar de situações complicadas.

*   **Desfazer Alterações Locais (Antes do `git add`):** Se você mexeu num arquivo e se arrependeu, isso volta ele pra como estava no último commit.
    ```bash
git checkout -- nome_do_arquivo.txt # Desfaz as alterações em um arquivo específico
git checkout -- . # Desfaz as alterações em TODOS os arquivos da pasta atual (CUIDADO!)
    ```

*   **Remover Arquivos (Parar de monitorar):**
    ```bash
git rm -f nome_do_arquivo.txt # Deleta o arquivo E para de monitorar
git rm --cached nome_do_arquivo.txt # NÃO deleta o arquivo, só para de monitorar
    ```

*   **Voltar um Commit (Reset):**
    ```bash
git reset --soft HEAD~1 # Volta um commit, mas mantém as mudanças nos arquivos (como se você tivesse desfeito o commit)
git reset --hard HEAD~1 # Volta um commit E descarta as mudanças nos arquivos (CUIDADO!)
git reset HEAD^ # Volta o último commit (igual ao HEAD~1)
    ```

*   **Reverter um Commit (Revert):** Cria um novo commit que desfaz as mudanças de um commit anterior. É mais seguro que o `reset --hard` porque mantém o histórico.
    ```bash
git revert id_do_commit # Desfaz as mudanças do commit, criando um novo commit
    ```

*   **Limpar Arquivos Não Rastreáveis:** Remove arquivos que o Git não está monitorando (tipo arquivos temporários, de build, etc.).
    ```bash
git clean -df # Remove arquivos e diretórios não rastreados (CUIDADO!)
    ```

## 5. Problemas Comuns com Merge/Pull/Push (E como resolver)

Às vezes, o Git fica confuso quando seu repositório local e o remoto estão diferentes. Isso é normal!

### 5.1. Entendendo as Mensagens de Erro

*   `"divergent branches and need to specify how to reconcile them" (git pull)`:
    Isso significa que o Git não sabe como juntar as alterações do repositório remoto com as suas. Ele te dá opções: `merge`, `rebase` ou `fast-forward only`.

*   `"rejected master -> master (non-fast-forward)" (git push)`:
    Você tá tentando enviar suas mudanças, mas o repositório remoto já tem coisas novas que você não tem. O Git não deixa você sobrescrever o histórico assim.

### 5.2. Como Resolver

Na maioria das vezes, você vai querer usar `git pull` antes de `git push`.

*   **Opção 1: Merge (Mais simples pra começar)**
    Cria um novo commit que junta suas mudanças com as do remoto. O histórico fica um pouco mais "bagunçado" com commits de merge, mas é mais fácil de entender o que aconteceu.
    ```bash
git pull --no-rebase # Puxa e faz um merge
    ```

*   **Opção 2: Rebase (Histórico mais limpo)**
    Reaplica seus commits em cima dos commits mais recentes do remoto, deixando o histórico linear. **Cuidado:** só use se você não compartilhou seus commits com ninguém ainda!
    ```bash
git pull --rebase # Puxa e faz um rebase
    ```

*   **Opção 3: Fast-forward only (Só se o remoto estiver à frente)**
    Só faz o pull se o remoto tiver commits que você não tem e não houver conflitos. Se você tiver commits locais que o remoto não tem, ele vai falhar.
    ```bash
git config pull.ff only # Configura pra sempre usar fast-forward only
    ```

**Dica:** Pra quem tá começando, o `merge` (`git pull --no-rebase`) é geralmente mais seguro e fácil de lidar.

## 6. Dicas Extras e Recursos Úteis

*   **Gerar Token de Acesso Pessoal (PAT):** Pra não usar sua senha toda hora em repositórios remotos. Vá em `Settings` >> `Developer settings` >> `Personal access tokens` no seu GitHub.
*   **Extensão para VS Code:** `Gitignore Templates` é uma mão na roda pra criar seu arquivo `.gitignore` rapidinho.
*   **Exceção no `.gitignore`:** Se você tem uma regra genérica no `.gitignore` (tipo `*.log`) mas quer incluir um arquivo específico, use `!nome_do_arquivo.log`.

### Recursos Oficiais e Guias:

*   **Site Oficial do Git:** [git-scm.com](https://git-scm.com/)
*   **Guia Prático de Git:** [rogerdudler.github.io/git-guide/index.pt_BR.html](https://rogerdudler.github.io/git-guide/index.pt_BR.html)
*   **Tutorial em Vídeo (Fabio Akita):** [youtube.com/watch?v=i9UqgsXpqT4](https://www.youtube.com/watch?v=i9UqgsXpqT4) (Assista, é bom demais!)
