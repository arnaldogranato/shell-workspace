---
title: Guia Rápido de Comandos Linux (Shell)
date: 2023-10-27
tags: [linux, shell, comandos, ubuntu, dicas]
category: Sistemas Operacionais
status: revisado
related: []
---

# Guia Rápido de Comandos Linux (Shell)

E aí, galera! Esse é um guia rápido e direto pra você que usa Linux no dia a dia. Sem enrolação, só os comandos que salvam a pátria e te ajudam a desenrolar no terminal. Bora lá!

## 1. Rede (Pra ver o que tá rolando na conexão)

*   `ifconfig`: Pra ver as configurações das suas interfaces de rede. (Antigo, mas ainda funciona em muitos lugares).
*   `netcat (nc)`: Ferramenta coringa pra rede: ler/escrever dados, escanear portas, etc.
*   `tcpdump`: Captura e analisa pacotes de rede em tempo real. Pra quem gosta de fuçar a fundo.
*   `wireshark`: A versão gráfica do `tcpdump`, mais amigável pra analisar tráfego.
*   `dig`: Pra fazer umas perguntas mais detalhadas pro DNS.
*   `curl ifconfig.me`: Descobre qual é o seu IP externo rapidão.
*   `sudo ufw app list`: Lista os apps que estão usando o firewall UFW.
*   `iptables -D INPUT -s 999.999.999.999 -j DROP`: Desbloqueia um IP que foi banido (troque o IP pelo certo!).

## 2. Processos (Pra ver quem tá vivo e quem tá gastando)

*   `kill PID`: Mata um processo pelo número de identificação (PID).
*   `killall nome_do_processo`: Mata todos os processos com aquele nome.
*   `top`: Mostra os processos rodando e o quanto eles estão consumindo de CPU/Memória, em tempo real.
*   `htop`: Uma versão mais bonitinha e interativa do `top`.
*   `pgrep nome_do_processo`: Acha o PID de um processo pelo nome.
*   `ps -efaa | grep nomeDoUsuario | wc -l`: Conta quantos processos um usuário específico está rodando.
*   `ps -xa | grep nomeDoServicoOuRobo`: Vê se um serviço ou robô tá de pé.
*   `ps -aux | sort -k 4 -r | head -n 2`: Mostra os dois processos que mais estão comendo sua memória.

## 3. Arquivos (Pra mexer nos seus documentos e pastas)

*   `pwd`: Mostra onde você está no sistema (o caminho completo).
*   `mv`: Move ou renomeia arquivos e pastas.
*   `mkdir`: Cria uma pasta nova.
*   `touch`: Cria um arquivo vazio ou atualiza a data de modificação de um existente.
*   `chmod`: Muda as permissões de arquivos e pastas (quem pode ler, escrever, executar).
*   `chown`: Muda o dono e/ou o grupo de um arquivo/pasta.
*   `cp -rp ../pasta_origem .`: Copia uma pasta inteira com as permissões originais.
*   `less nome_do_arquivo`: Abre um arquivo pra você ler, navegando página por página.
*   `du -sh * | sort -hr`: Lista o tamanho das pastas e arquivos na ordem do maior pro menor.
*   `rm -v`: Remove um arquivo ou link (cuidado pra não usar com `/`!).
*   `find / -mmin -1`: Lista os arquivos que foram modificados no último minuto.
*   `find . -iname "meu-arquivo"`: Acha um arquivo pelo nome, sem se importar com maiúsculas/minúsculas.
*   `echo Conteudo > NomeDoArquivo`: Escreve um texto dentro de um arquivo (sobrescreve se já existir).
*   `cat | grep -i Texto`: Lista as linhas de um arquivo que contêm um texto específico, ignorando maiúsculas/minúsculas.
*   `lsof nome_do_diretorio`: Mostra quem está usando um diretório (qual processo).
*   `base64 -d < arquivo_codificado`: Decodifica um arquivo em base64.
*   `echo -n "texto" | base64`: Codifica um texto em base64.
*   `tar xzf arquivo.tar.gz`: Descompacta um arquivo `.tar.gz`.
*   `tar czf saida.tar.gz pasta_para_compactar/`: Compacta uma pasta em `.tar.gz`.
*   `gzip/gunzip`: Pra compactar e descompactar arquivos `.gz`.
*   `pdftk arquivo_grande.pdf burst`: Separa um PDF em várias páginas.
*   `pdftk 1.pdf 2.pdf cat output final.pdf`: Junta vários PDFs em um só.
*   `convert imagem.jpg saida.gif`: Converte uma imagem de um formato para outro (precisa do ImageMagick).
*   `iconv -f ISO_8859-1 -t UTF8 arquivo_antigo -o arquivo_novo`: Converte a codificação de um arquivo.
*   `grep`: O canivete suíço pra procurar texto em arquivos.
*   `sed`: Editor de texto pra fazer substituições e transformações em arquivos.
*   `awk`: Linguagem pra processar texto baseado em padrões.

## 4. Instalação de Pacotes (Pra colocar programas novos)

*   `apt-get` ou `apt`: Os gerentes de pacotes do Ubuntu (e Debian).
*   `sudo apt install nome_do_pacote`: Instala um programa.
*   `sudo apt remove nome_do_pacote`: Remove um programa (mas mantém os arquivos de configuração).
*   `sudo apt purge nome_do_pacote`: Remove um programa E apaga todos os arquivos de configuração.
*   `curl -fsSL https://get.docker.com | bash`: Instala o Docker rapidão (cuidado ao rodar scripts da internet!).

## 5. Informações do Sistema (Pra saber o que você tem)

*   `df -vh`: Mostra o espaço livre e ocupado nos seus discos.
*   `du`: Mostra o tamanho de pastas e arquivos.
*   `lsb_release -a`: Vê qual a versão do seu Linux/Ubuntu.
*   `route -n`: Mostra as rotas de rede do seu servidor.

## 6. Gerenciamento do Sistema (Pra manter a casa em ordem)

*   `sudo fail2ban-client -i`: Entra no cliente do Fail2ban (pra gerenciar IPs banidos).
    *   `status`: Lista as "cadeias" ativas (tipo `ssh`, `apache`).
    *   `status ssh`: Vê quem foi banido do SSH.
    *   `set ssh unbanip 200.222.222.222`: Desbane um IP (troque pelo IP certo!).
    *   `exit`: Pra sair do cliente Fail2ban.

## 7. Automação e Processamento de Texto (Pra fazer o computador trabalhar pra você)

*   `for i in "$(cat lista.txt)"; do vim -c "%s/antigo/novo/g|wq" $i; done`: Um comando mais avançado pra substituir texto em vários arquivos de uma lista.
*   `for line in $(cat file.txt); do echo "$line" ; done`: Lê cada linha de um arquivo e faz algo com ela (aqui, só imprime).

## 8. Montagem de Partições e Dispositivos (Pra acessar outras unidades)

*   `mount.cifs //192.168.1.102/DIRWINDOWS /mnt/smb/DIRLINUX -o username=usuario,password=senha`: Monta uma pasta compartilhada do Windows (SMB) no seu Linux. (Troque IPs, pastas, usuário e senha!)
    *   **Dica:** Crie a pasta `/mnt/smb/DIRLINUX` antes de montar.
    *   **Pra desmontar:** `umount /mnt/smb/DIRLINUX`.

## Comandos de Sobrevivência (Pra não entrar em pânico!)

*   **Ver quem está usando uma porta:**
    ```bash
sudo lsof -i :8080 # Troque 8080 pela porta que você quer verificar
    ```
*   **Matar um processo travado (se `kill` não funcionar):**
    ```bash
sudo kill -9 PID # O -9 é pra forçar a parada, use com cautela!
    ```
*   **Ver o espaço em disco de forma mais detalhada:**
    ```bash
df -h # Mais fácil de ler que o -vh
    ```
*   **Reiniciar o sistema (com segurança):**
    ```bash
sudo reboot
    ```
*   **Desligar o sistema (com segurança):**
    ```bash
sudo shutdown -h now
    ```

## OUTROS

### 1. Rede e Acesso Remoto
*   **`ssh -X -Y usuário@máquina`**: Utilizado para acessar um servidor remoto permitindo a visualização gráfica via XQuartz.
*   **`route add -net`**: Comando para adicionar manualmente uma rota de rede específica.
*   **`nmap -v localhost`**: Ferramenta para escanear e listar as portas abertas no servidor local.

### 2. Manipulação de Arquivos e Busca Avançada
*   **`tile`**: Comando indicado para mostrar a formatação de um arquivo.
*   **`find / -type f -name`**: Uma variação do comando `find` que localiza apenas arquivos (excluindo diretórios) com um nome específico.
*   **`find arquivos/ -xdev -printf '%h\n' | sort | uniq -c | sort -k 1 -n`**: Um comando complexo para gerar um ranking de consumo de **inodes** no sistema de arquivos.
*   **`grep -P`**: Uso do `grep` com Expressões Regulares Perl (Perl-Compatible Regular Expressions) para buscas textuais mais complexas.

### 3. Comunicação e Mensagens do Sistema
*   **`cat /var/log/mail.log | mutt`**: Uma sequência de comandos para testar o envio de e-mails diretamente do servidor.

### 4. Compactação e Descompactação
*   **`unzip`**: Comando específico para descompactar arquivos no formato `.zip`, que não havia sido listado no guia original (que focava em `tar` e `gzip`).
*   **`tar` (descrição geral)**: Embora o guia liste o uso prático, as notas trazem a definição do `tar` como uma ferramenta geral para manipular, criar e visualizar arquivos de arquivo.

### 5. Montagem de Partições e Dispositivos
*   **`mount` e `umount` (genéricos)**: As notas listam os comandos genéricos para montar e desmontar sistemas de arquivos, enquanto o guia foca especificamente no `mount.cifs`.
*   **`smbmount`**: Comando alternativo para montagem de compartilhamentos SMB remotos em diretórios locais.

### 6. Conversão de Codificação (Variações)
*   **`iconv --from-code...`**: Uma sintaxe alternativa para o comando `iconv` (usando `--from-code` e `--to-code` em vez de `-f` e `-t`) para converter a codificação de arquivos.
---
