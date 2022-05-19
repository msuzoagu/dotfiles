# matches case insensitive for lowercase
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# pasting with tabs doesn't perform completion
zstyle ':completion:*' insert-tab pending

# enables aws command completion by ensuring command 
# below runs each time you open a new shell
complete -C '/usr/local/bin/aws_completer' aws
