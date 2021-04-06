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

# Customize to your needs...

eval `/usr/local/opt/coreutils/libexec/gnubin/dircolors ~/.dircolors-solarized/dircolors.ansi-dark`

# デフォルトエディタの設定
export EDITOR=vim

# iterm
# alias fin='a="Finale"; echo ${a:l}'
alias fin='echo finale'

# git
alias glt="git log --graph --pretty=format:'%x09%C(auto) %h %Cgreen %ar %Creset%x09by \"%C(cyan ul)%an%Creset\" %x09%C(auto)%s %d'"
alias gp="git pull origin master"

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
alias rm='rm -i'
alias ..='cd ..'
alias mv='mv -i'
alias cp='cp -i'
