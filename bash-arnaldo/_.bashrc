# --- O H   M Y   B A S H
# Caminho para a instalação do oh-my-bash.
export OSH=/home/arnaldo/.oh-my-bash

# Define o nome do tema a ser carregado. Se definido como "random",
# um tema aleatório será carregado a cada vez que o oh-my-bash for iniciado
OSH_THEME="powerline-multiline"

# Descomente a linha abaixo para habilitar a conclusão de comandos com diferenciação entre maiúsculas e minúsculas.
# CASE_SENSITIVE="true"

# Descomente a linha abaixo para habilitar a conclusão de comandos com tratamento de hífen. A conclusão com diferenciação entre maiúsculas e minúsculas deve estar desativada. O "_" e "-" serão intercambiáveis.
# HYPHEN_INSENSITIVE="true"

# Descomente a linha abaixo para desativar verificações automáticas de atualização a cada duas semanas.
# DISABLE_AUTO_UPDATE="true"

# Descomente a linha abaixo para alterar a frequência das verificações automáticas de atualização (em dias).
# export UPDATE_OSH_DAYS=13

# Descomente a linha abaixo para desativar cores no comando 'ls'.
# DISABLE_LS_COLORS="true"

# Descomente a linha abaixo para desativar a definição autom
# DISABLE_AUTO_TITLE="true"

# Descomente a linha abaixo para habilitar a correção automática de comandos.
# ENABLE_CORRECTION="true"

# Descomente a linha abaixo para exibir pontos vermelhos enquanto aguarda a conclusão de comandos.
# COMPLETION_WAITING_DOTS="true"

# Descomente a linha abaixo se quiser desativar a marcação de arquivos não rastreados
# sob controle de versão como sujos. Isso torna a verificação do status do repositório
# em repositórios grandes muito, muito mais rápida.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Descomente a linha abaixo se deseja alterar o formato do carimbo de data e hora
# na saída do comando de histórico. Os formatos opcionais são: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Você gostaria de usar uma pasta personalizada diferente de $OSH/custom?
# OSH_CUSTOM=/caminho/para/nova-pasta-personalizada

# Quais completions você gostaria de carregar? (completions podem ser encontrados em ~/.oh-my-bash/completions/*)
# Completions personalizados podem ser adicionados a ~/.oh-my-bash/custom/completions/
# Formato de exemplo: completions=(ssh git bundler gem pip pip3)
# Adicione com sabedoria, muitos completions podem tornar a inicialização do shell mais lenta.
completions=(
  git
  composer
  ssh
)

# Quais aliases você gostaria de carregar? (aliases podem ser encontrados em ~/.oh-my-bash/aliases/*)
# Aliases personalizados podem ser adicionados a ~/.oh-my-bash/custom/aliases/
# Formato de exemplo: aliases=(vagrant composer git-avh)
# Adicione com sabedoria, muitos aliases podem tornar a inicialização do shell mais lenta.
aliases=(
  general
)

# Quais plugins você gostaria de carregar? (plugins podem ser encontrados em ~/.oh-my-bash/plugins/*)
# Plugins personalizados podem ser adicionados a ~/.oh-my-bash/custom/plugins/
# Formato de exemplo: plugins=(rails git textmate ruby lighthouse)
# Adicione com sabedoria, muitos plugins podem tornar a inicialização do shell mais lenta.
plugins=(
  git
  bashmarks
)


# Esta linha carrega o script principal do Oh My Bash (oh-my-bash.sh) que é o coração do Oh My Bash.
# Ele contém as configurações e funcionalidades essenciais que tornam o Oh My Bash uma ferramenta poderosa e personalizável para o seu shell.
# É altamente recomendado não modificar este arquivo a menos que você tenha um entendimento avançado das configurações internas do Oh My Bash.
source $OSH/oh-my-bash.sh


# User configuration
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-bash libs,
# plugins, and themes. Aliases can be placed here, though oh-my-bash
# users are encouraged to define aliases within the OSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias bashconfig="mate ~/.bashrc"
# alias ohmybash="mate ~/.oh-my-bash"
alias c9="ssh 192.168.8.209"
alias python="python3"
alias v-a="source /mnt/b/arnaldo-workspace/v-a/bin/activate" 
