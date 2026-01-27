#-------------------------------------------------------------------------------
# Matches case insensitive for lowercase
#-------------------------------------------------------------------------------
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'


#-------------------------------------------------------------------------------
# Pasting with tabs doesn't perform completion
#-------------------------------------------------------------------------------
zstyle ':completion:*' insert-tab pending


#-------------------------------------------------------------------------------
# Enables aws command completion by ensuring that the
# command below runs whenever a new shell is opened 
#-------------------------------------------------------------------------------
complete -C '/usr/local/bin/aws_completer' aws

#-------------------------------------------------------------------------------
# Enable autocomplete for Terraform
#-------------------------------------------------------------------------------
complete -o nospace -C /opt/homebrew/Cellar/tfenv/3.0.0/versions/1.4.6/terraform terraform
