# My Dotfiles

Heavily inspired by Draws heavily from [Zack Holman's dotfiles](https://github.com/holman/dotfiles) as well as (Derek M Franks' dotfiles)[https://github.com/defrank]. 

Supported shell is [Zsh](https://zsh.sourceforge.io). 

##Topical
Everything's built around topic areas. If you're adding a new area to your
forked dotfiles — say, "Java" — you can simply add a `java` directory and put
files in there. 

Anything with an extension of `.zsh` will get automatically included into your 
shell. How? In `zsh/zshrc.symlink`, we read and execute all files with .zsh extension via [source command](https://linuxcommand.org/lc3_man_pages/sourceh.html)

Anything with an extension of `.symlink` gets symlinked into `$HOME` when you run `script/bootstrap`. How? Read `install_dotfiles` function in `script/bootstrap`.

Anything in `bin/**` gets added to your `$PATH`. How? Read `zsh/fpath.zsh` as well as `zsh/config.zsh`
