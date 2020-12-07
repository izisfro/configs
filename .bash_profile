parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ \$(kubeaware_prompt)$ \$(parse_git_branch)\[\033[00m\] $ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
export PATH="/usr/local/opt/node@10/bin:$PATH"

alias ls='ls -GFh'
export PATH="/usr/local/opt/openjdk/bin:$PATH"

export LANG=""
export LC_CTYPE="UTF-8"
export LC_ALL=""
alias gitdeleteb="git branch | grep -v "master" | xargs git branch -D"


#KUBE
export KUBECONFIG="/Users/izisf/Projects/kubeconfigs/config"
alias k="kubecolor" # kubecolor=kubectl med farger
#alias k=kubectl
alias ctx=kubectx
alias ns=kubens
source /Users/izisf/Tools/kubeaware/kubeaware.sh
export BASH_COMPLETION_COMPAT_DIR="/usr/local/etc/bash_completion.d"
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

source <(kubectl completion bash)
complete -F __start_kubectl k

## FZF
export FZF_DEFAULT_OPTS='
  --height 75% --multi --reverse
'
export FZF_CTRL_T_OPTS="--preview 'bat --color=always --line-range :500 {}'"

export FZF_ALT_C_OPTS="--preview 'tree -C {} | head -100'"
########



