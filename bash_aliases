alias ll='ls -l'
alias la='ls -la'

alias u="cd ../"
alias uu="cd ../../"
alias uuu="cd ../../../"
alias uuuu="cd ../../../../"
alias uuuuu="cd ../../../../../"

alias rehash="source ~/.zshrc"

alias gf="git fupum"
alias gam="git add .; git ci --amend --no-edit"
alias gc="git ci -am "
alias gs="git st"
alias gd="git df"
alias gl="git lg"
alias gp="git ph"
alias gpf="git ph -f"
alias ga="git add ."
alias gh="open `git remote -v | grep fetch | awk '{print $2}' | sed 's/git@/http:\/\//' | sed 's/com:/com\//'`| head -n1"
alias hp="hub open"

