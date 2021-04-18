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

# zshrc
alias zshrc='code Users/kenya/.zshrc'

# 履歴
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

# git
alias glt="git log --graph --pretty=format:'%x09%C(auto) %h %Cgreen %ar %Creset%x09by \"%C(cyan ul)%an%Creset\" %x09%C(auto)%s %d'"
# alias gp="git pull origin master"

# docker
alias dd='docker-compose down'
alias di='docker images'
alias dipr='docker image prune'
alias dcp='docker container ps'
alias dcla='docker container ls -a'
alias dcpr='docker container prune'
alias d-c='docker-compose'

alias drs='cd /Users/kenya/auto-schedule && dcud && docker-compose run --rm -p 3001:3001 back'
alias drb='docker-compose run --rm back'
alias drr='docker-compose run --rm back bin/rspec'
alias drrnorm='docker-compose run back bin/rspec'
alias drbrcs='docker-compose run --rm back rails c -s'
alias drbrr='docker-compose run --rm back rails routes'

alias dcud='docker context use default'
alias dcuecs='docker context use myecscontext'

# ruby
alias be='bundle exec'
alias rd:c='rails db:create'
alias rd:m='rails db:migrate'
alias rd:r='rails db:rollback'

# yarn
# alias yd='cd /Users/kenya/auto-schedule/front && yarn dev'
alias drfs='cd /Users/kenya/auto-schedule && dcud && docker-compose run --rm -p 80:80 front'

alias yrlf='yarn run lint --fix'

# auto-schedule
alias cdf='cd /Users/kenya/auto-schedule/front'
alias cda='cd /Users/kenya/auto-schedule'

# e-sports-tactics
alias cde='cd /Users/kenya/e-sports-tactics'
alias drfse='cd /Users/kenya/e-sports-tactics && dcud && docker-compose run --rm -p 80:80 front'
alias drse='cd /Users/kenya/e-sports-tactics && dcud && docker-compose run --rm -p 3001:3001 back'

# routine-app
alias cdr='cd /Users/kenya/routine-app'
alias drfsr='cd /Users/kenya/routine-app && dcud && docker-compose run --rm -p 80:80 front'
alias drsr='cd /Users/kenya/routine-app && dcud && docker-compose run --rm -p 3001:3001 back'

# diary-app
alias cdd='cd /Users/kenya/diary-app'
alias drfsd='cd /Users/kenya/diary-app && dcud && docker-compose run --rm -p 80:80 front'
alias drsd='cd /Users/kenya/diary-app && dcud && docker-compose run --rm -p 3001:3001 back'

alias ls='gls --color=auto'
alias lsd='ls -d */'
alias rm='rm -i'
alias ..='cd ..'
alias mv='mv -i'
alias cp='cp -i'

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/kenya/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/kenya/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/kenya/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/kenya/google-cloud-sdk/completion.zsh.inc'; fi
