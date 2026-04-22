#################################### RAILS ####################################
alias be="bundle exec"
alias rake="bundle exec rake"
alias rspec="bundle exec rspec"


##################################### GIT #####################################
compdef _git g='git'
alias ga="git add"
alias gd="git diff"
alias gl="git log"
alias gb="git branch"
alias gst="git status"
alias gpo="git push origin"
alias gptom="git push -u origin main"
alias gaa="git add ."
alias gch="git checkout"
alias gcl="git clone"
alias gcm="git commit -m"
alias gnb="git checkout -b"
alias grb="git branch -m "
alias grao="git remote add origin"
alias gcan="git commit --amend --no-edit"
alias mua="ssh -T git@mua"
alias swiftanon="ssh -T git@swiftanon"

# Git Diff Clean - Show only changed lines with color, hiding headers
# Usage: gdf path/to/file
gdf() {
  git diff -U0 --color "$@" | grep -vE "diff --git|index [0-9a-f]|--- a/|\+\+\+ b/"
}

################################### TERMINAL ###################################
alias home="cd $HOME"
alias reload="exec $SHELL"
alias cl="clear"
alias up="cd ../"
