export LSCOLORS="exfxcxdxbxegedabagacad"
export CLICOLOR=true

fpath=($DOTFILES/functions $fpath)

autoload -U $DOTFILES/functions/*(:t)

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

setopt NO_HUP
setopt CORRECT
setopt IGNORE_EOF
setopt HIST_VERIFY
setopt PROMPT_SUBST
setopt NO_LIST_BEEP
setopt COMPLETE_IN_WORD
setopt HIST_REDUCE_BLANKS
setopt APPEND_HISTORY 	# adds history
setopt EXTENDED_HISTORY # add timestamps to history
setopt LOCAL_TRAPS 			# allow functions to have local traps
setopt SHARE_HISTORY 		# share history between sessions ???
setopt LOCAL_OPTIONS # allow functions to have local options
setopt HIST_IGNORE_ALL_DUPS  # don't record dupes in history


#-------------------------------------------------------------------------------
# Do not nice background tasks
#-------------------------------------------------------------------------------
setopt NO_BG_NICE 

#-------------------------------------------------------------------------------
# Adds history incrementally and share it across sessions
#-------------------------------------------------------------------------------
setopt INC_APPEND_HISTORY SHARE_HISTORY 

#-------------------------------------------------------------------------------
# Do not expand aliases _before_ completion has finished
#   like: git comm-[tab]
#-------------------------------------------------------------------------------
setopt complete_aliases

#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------
bindkey '^[^[[D' backward-word
bindkey '^[^[[C' forward-word
bindkey '^[[5D' beginning-of-line
bindkey '^[[5C' end-of-line
bindkey '^[[3~' delete-char
bindkey '^?' backward-delete-char
