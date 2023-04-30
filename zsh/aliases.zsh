alias cl='clear'
alias up='cd ../'
alias reload='. ~/.zshrc'
alias glista="git config --list | grep alias"

if hash colordiff; then
    alias diff=colordiff
fi
