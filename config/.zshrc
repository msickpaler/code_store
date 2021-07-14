#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

autoload -Uz promptinit
promptinit
prompt sorin

# Customize to your needs...

eval `/usr/local/opt/coreutils/libexec/gnubin/dircolors ~/.dircolors-solarized/dircolors.ansi-dark`

# eval "$(gh completion -s zsh)"

# history
function history-all { history -E 1 }
alias hist='history'
alias hista='history-all'

# 入力を引数として、それから始まるコマンドを履歴から補完できる。
# ここからーーーーーーーーーーー
autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^p" history-beginning-search-backward-end
bindkey "^n" history-beginning-search-forward-end
# ここまでーーーーーーーーーーー

# デフォルトエディタの設定
export EDITOR=vim

# iterm
# alias fin='a="Finale"; echo ${a:l}'
alias fin='echo finale'

# docker
alias dd='docker-compose down'
alias di='docker images'
alias dipr='docker image prune'
alias dcp='docker container ps'
alias dcla='docker container ls -a'
alias dcpr='docker container prune'
alias d-c='docker-compose'

# git
alias gcd="git checkout develop"
alias glt="git log --graph --pretty=format:'%x09%C(auto) %h %Cgreen %ar %Creset%x09by \"%C(cyan ul)%an%Creset\" %x09%C(auto)%s %d'"
alias gp="git pull upstream develop"

# yarn
alias ys='yarn start'
alias yd='yarn dev'
alias yt='yarn test'

# fire-chief
alias cdweb='cd /Users/kenya/dev/firechief-web'
alias cdcen='cd /Users/kenya/dev/firechief-web/partial/center'
alias cdshared='cd /Users/kenya/dev/firechief-web/shared'
alias cdapp='cd /Users/kenya/dev/firechief'

alias ls='gls --color=auto'
alias lsd='ls -d */'
alias rm='rm -i'
alias ..='cd ..'
alias mv='mv -i'
alias cp='cp -i'
alias -g gre='| grep'
alias histag='history-all gre'
alias zshrc='code /Users/kenya/.zshrc'
alias pwdc='pwd | tr -d "\n" | pbcopy'
alias exs='expo start'

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/kenya/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/kenya/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/kenya/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/kenya/google-cloud-sdk/completion.zsh.inc'; fi

