## enable chruby
source $HOMEBREW_PREFIX/opt/chruby/share/chruby/chruby.sh

## enable auto-switching to project-ruby 
## via .ruby-version at root of project 
source $HOMEBREW_PREFIX/opt/chruby/share/chruby/auto.sh

chruby ruby-3.2.2