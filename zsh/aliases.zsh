alias cl="clear"
alias up="cd ../"
alias hm="cd $HOME"
alias reload="exec $SHELL"


#-------------------------------------------------------------------------------
# Rails
#-------------------------------------------------------------------------------
alias be="bundle exec"
alias rake="bundle exec rake"
alias rspec="bundle exec rspec"


#-------------------------------------------------------------------------------
# Git 
#-------------------------------------------------------------------------------
compdef _git g='git'
alias ga="git add"
alias gd="git diff"
alias gl="git log"
alias gb="git branch"
alias gst="git status"
alias gpo="git push origin"
alias gpato="git push -u origin"
alias gaa="git add ."
alias gch="git checkout"
alias gcl="git clone"
alias gcm="git commit -m"
alias gnb="git checkout -b"
alias grb="git branch -m "
alias grao="git remote add origin"
alias gcan="git commit --amend --no-edit"


#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------
if hash colordiff; then
    alias diff=colordiff
fi
