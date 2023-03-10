# My Dotfiles

Draws heavily from [Zack Holman's dotfiles](https://github.com/holman/dotfiles) as well as [Derek M Franks' dotfiles](https://github.com/defrank). 


## How Things Work
Supported shell is [Zsh](https://zsh.sourceforge.io). 

Everything's built around topic areas. If you're adding a new area to your forked dotfiles — say, "Java" — you can simply add a `java` directory and put files in there. 

Anything with an extension of `.zsh` is automatically loaded into your shell. 
> **How?** 
> 
>>In `zsh/zshrc.symlink`, we read and execute all files with .zsh extension via [source command](https://linuxcommand.org/lc3_man_pages/sourceh.html)


Anything with an extension of `.symlink` gets symlinked into `$HOME` when you run `script/bootstrap`. 
> **How?** 
> 
>> Read `install_dotfiles` function in `script/bootstrap`.


Anything in `bin/**` gets added to your `$PATH`. 
> **How?**
> 
>> Read `zsh/fpath.zsh` as well as `zsh/config.zsh`


## Issues Encountered
### Installing `asdf` via Brewfile
After installing `asdf` via Homebrew, you need to add `asdf` to the shell environment. 

Since installation is via brewfile, I missed the post installation message on how to urging me to add `/opt/homebrew/opt/asdf/libexec/asdf.sh` to `~/.zshrc`. 

Documentation for installing `asdf` via Homebrew states: 
> Add asdf.sh to your ~/.zshrc with:
>> `echo -e "\n. $(brew --prefix asdf)/libexec/asdf.sh" >> ${ZDOTDIR:-~}/.zshrc`

Running `brew info asdf` reveals the current path, which was used to construct `dotfiles/asdf/asdf.zsh`



## Getting Started
### On a New Mac 
`git` has a dependency on _Xcode Command Line Tools_ which you can 
install by running `gcc` in terminal before running the commands
below


### On an Existing Mac 
Keep in mind that this is my own personal setup so I might make changes without documentating them here first. Thus ensure you 
have a backup of your system before running the commands below. 

Run this: 

```sh
git clone https://github.com/msuzoagu/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
script/bootstrap
```
