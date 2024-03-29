autoload colors && colors
# cheers, @ehrenmurdick
# http://github.com/ehrenmurdick/config/blob/master/zsh/prompt.zsh

if (( $+commands[git] ))
then
  # echo "which git"
  git="$commands[git]"
else
  git="/usr/bin/git"
fi

git_branch() {
  echo $($git symbolic-ref HEAD 2>/dev/null | awk -F/ {'print $NF'})
}

git_dirty() {
  if $(! $git status -s &> /dev/null)
  then
    echo ""
  else
    if [[ $($git status --porcelain) == "" ]]
    then
      echo "on %{$fg_bold[green]%}$(git_prompt_info)%{$reset_color%}"
    else
      echo "on %{$fg_bold[red]%}$(git_prompt_info)%{$reset_color%}"
    fi
  fi
}

git_prompt_info () {
 ref=$($git symbolic-ref HEAD 2>/dev/null) || return
# echo "(%{\e[0;33m%}${ref#refs/heads/}%{\e[0m%})"
 echo "${ref#refs/heads/}"
}

# This assumes that you always have an origin named `origin`,
# and that you only care about one specific origin. If this 
# is not the case, you might want to use: 
# `$git cherry -v @{upstream}` instead.
need_push() {
  if [ $($git rev-parse --is-inside-work-tree 2>/dev/null) ]
  then
    number=$($git cherry -v origin/$(git symbolic-ref --short HEAD) 2>/dev/null | wc -l | bc)

    if [[ $number == 0 ]]
    then
      echo " "
    else
      echo " with %{$fg_bold[magenta]%}$number unpushed%{$reset_color%}"
    fi
  fi
}

directory_name() {
  ## https://scriptingosx.com/2019/07/moving-to-zsh-06-customizing-the-zsh-prompt/
  # echo "%{$fg_bold[cyan]%}%3~%f%{$reset_color%}"

  ## -> same as above but this time we insert a number between the % and / 
  ## -> thus ending up with a colored backward slash at the end of path
  # echo "%{$fg_bold[cyan]%}%1/%\/%{$reset_color%}"
  # echo "%{$fg_bold[cyan]%}%2/%\/%{$reset_color%}"

  ## -> this prints the full path of the current working directory
  echo "%{$fg_bold[cyan]%}%~%{$reset_color%}"
}

local smiley="%(?,%{$fg[green]%}☺%{$reset_color%},%{$fg[red]%}☺%{$reset_color%})"

battery_status() {
  if test ! "$(uname)" = "Darwin"
  then
    exit 0
  fi

  if [[ $(sysctl -n hw.model) == *"Book"* ]]
  then
    $DOTFILES/bin/battery-status
  fi
}

# time() {
#   # echo "D{%Y%m%d-%H:%M:%S}"
#   # echo -n \[\$(date +%H:%M:%S)\]\
#   # echo "%{$(date +%H:%M:%S)}"
#   # "$(date '+%A %B %d %Y %r')"
#   # tome=
# }


day() {
  echo "%{$(date +%D)"
}

currentTime() {
  echo "%{$(date +%r)"
}


# export PROMPT=$'\n$(battery_status)in $(directory_name) $(git_dirty)$(need_push)\n› '
PROMPT=$'\n[$(currentTime)] $(battery_status)in $(directory_name) $(git_dirty)$(need_push)\n› '
set_prompt () {
  export RPROMPT="%{$fg_bold[cyan]%}%{$reset_color%}"
}

precmd() {
  title "zsh" "%m" "%55<...<%~"
  set_prompt
}
