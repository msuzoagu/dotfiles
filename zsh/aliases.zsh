alias cl='clear'
alias hm='cd ~'
alias up='cd ../'
alias reload='. ~/.zshrc'

alias gl="git log"
alias gc="git clone"
alias gb="git branch"
alias gaa="git add ."
alias gst="git status"
alias gch="git checkout"
alias gcm="git commit -m"
alias gpo="git push origin"
alias gnb="git checkout -b"
alias grnb="git branch -m "
alias gpato="git push -u origin"
alias gpom="git push origin main"
alias grao="git remote add origin"
alias glista="git config --list | grep alias"

if hash colordiff; then
    alias diff=colordiff
fi
