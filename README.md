# My Dotfiles

Draws heavily from [Zack Holman's dotfiles](https://github.com/holman/dotfiles) as well as [Derek M Franks' dotfiles](https://github.com/defrank). 


## How Things Work
Supported shell is [Zsh](https://zsh.sourceforge.io). 

Everything's built around topic areas. If you're adding a new area to your
forked dotfiles — say, "Java" — you can simply add a `java` directory and put
files in there. 

Anything with an extension of `.zsh` is automatically loaded into your 
shell. 
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


## Getting Started

Run this: 

```sh
git clone https://github.com/msuzoagu/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
script/bootstrap
```
