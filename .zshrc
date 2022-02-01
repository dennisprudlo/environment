#
# Export the PATH variable to include the composer binaries
# This is needed to use the laravel command globally
export PATH=$PATH:$HOME/.composer/vendor/bin
export GPG_TTY=$(tty)

export CLICOLOR=2
export LSCOLORS=BxFxCxDxBxegegagadaaed

alias ll='ls -lisaF'
alias ..='cd ..'

alias erc='nano ~/.zshrc'
alias sourcerc='source ~/.zshrc'

alias pa='php artisan'
alias mfs='php artisan migrate:fresh --seed'
alias laralog='cat storage/logs/laravel.log'
alias laralog!='rm storage/logs/laravel.log'
alias nah='git reset --soft HEAD~1'
alias nah!='git reset --hard HEAD~1'
alias larastan='./vendor/bin/phpstan --memory-limit=2G'

function dev() { cd ~/Development/$1 }
function pangoon() { cd ~/Development/pangoon/$1 }
function roublez() { cd ~/Development/roublez/$1 }

alias getmykey='cat ~/.ssh/id_rsa.pub | pbcopy && echo "SSH key copied!"'
alias cpwd='pwd | pbcopy && echo "Working directory copied!"'

function sshcon() { echo "Connecting to $1..." && ssh forge@$1  }

#
# Style the zsh prompt
current_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
setopt PROMPT_SUBST
PROMPT='%n:%F{255}%1~%f%B%F{blue}$(current_branch)%b%f %% '
