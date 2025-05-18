# ------------------------------------------------------------------------------
# The `chruby.sh` script sets up core functionality of chruby. When sourced, it:
#  	- Defines the chruby command
#  	- Sets up environment variables ($RUBIES< $RUBY_ROOT, etc) 
#  	- Cleans up cariables from previous active rubies
# Without this, chruby isn't available as a shell command and switching fails
# ------------------------------------------------------------------------------
source $HOMEBREW_PREFIX/opt/chruby/share/chruby/chruby.sh

# ------------------------------------------------------------------------------
# Enables automatic switch to ruby version specified in .ruby-version  
# ------------------------------------------------------------------------------
source $HOMEBREW_PREFIX/opt/chruby/share/chruby/auto.sh

# ------------------------------------------------------------------------------
# Sets default ruby version 
# ------------------------------------------------------------------------------
chruby ruby-3.2.2