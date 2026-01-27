#-------------------------------------------------------------------------------
## topic/*.zsh: configuration files
### => example: homebrew/path.zsh 
############## => homebrew is topic; path.zsh is config file
####################  => every .zsh file in a topic folder is added to fpath
####################  => so that they can add functions and completion scripts
#-------------------------------------------------------------------------------
for topic_folder ($DOTFILES/*) if [ -d $topic_folder ]; then  
	fpath=($topic_folder $fpath); 
fi;

