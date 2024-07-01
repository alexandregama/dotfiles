alias vim='nvim'
alias vbalias='vim ~/bash_aliases'

# ---- Eza (better ls) -----
alias ls="eza --icons=always --color=always --long"

alias ll='ls -l'
alias la='ls -la'

alias u="cd ../"
alias uu="cd ../../"
alias uuu="cd ../../../"
alias uuuu="cd ../../../../"
alias uuuuu="cd ../../../../../"

alias rehash="source ~/.zshrc"
alias dotfiles="sh ~/dotfiles/setup.sh"

alias gf="git fupum"
alias gam="git add .; git ci --amend --no-edit"
alias gc="git ci -am "
alias gs="git st"
alias gd="git df"
alias gl="git lg"
alias gp="git ph"
alias gpf="git ph -f"
alias ga="git add ."
alias gclonecd='function _gitclonecd() { git clone "$1" && cd "$(basename "$1")"; }; _gitclonecd'

# for some reason this alias is making the load startup slower
# alias gh="open `git remote -v | grep fetch | awk '{print $2}' | sed 's/git@/http:\/\//' | sed 's/com:/com\//'`| head -n1"

alias hb="hub browse"

alias pyactivate="source venv/bin/activate"
alias pydeactivate="deactivate"

alias pversion="python3 --version"
alias pyenv="python3 -m venv venv"

alias redis-start="brew services start redis"
alias redis-stop="brew services stop redis"

alias vim-alias="vim ~/dotfiles/bash_aliases"
alias vim-nvim="vim ~/.config/nvim/"
