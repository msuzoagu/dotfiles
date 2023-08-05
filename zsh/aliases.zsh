alias cl="clear"
alias up="cd ../"
alias hm="cd $HOME"
alias reload="exec $SHELL"

alias ga="git add"
alias gd="git diff"
alias gl="git log"
alias gs="git status"
alias gb="git branch"
alias gaa="git add ."
alias gch="git checkout"
alias gcl="git clone"
alias gcm="git commit -m"
alias gnb="git checkout -b"
alias gpo="git push origin"
alias grb="git branch -m "
alias gpat="git push -u origin"
alias gpom="git push origin main"
alias grao="git remote add origin"
alias gcan="git commit --amend --no-edit"

if hash colordiff; then
    alias diff=colordiff
fi
