# Dotfiles

Draws heavily from [Zack Holman's dotfiles](https://github.com/holman/dotfiles) as well as [Derek M Franks' dotfiles](https://github.com/defrank). 

> On macOS leave system version of softwares alone and use Homebrew to install packages/software needed

## Gettting Started
To get started: 

```shell
git clone https://github.com/msuzoagu/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
script/bootstrap
```

## Organization
1. supported shell is [Zsh](https://zsh.sourceforge.io)

2. Everything is built around topic areas. If you're adding a new area to the forked dotfiles — say, "Java" — you can simply add a `java` directory and put files in there

3. Anything with an extension of `.zsh` is automatically loaded into your shell
  - In `zsh/zshrc.symlink`, we read and execute all files with .zsh 
  extension via [source command](https://linuxcommand.org/lc3_man_pages/sourceh.html)
    
4. Anything with an extension of `.symlink` gets symlinked into **$HOME** when you run `script/bootstrap`. Read `install_dotfiles` function in `script/bootstrap`

5. Anything in `bin/**` gets added to your `$PATH`. Read `zsh/fpath.zsh` as well as `zsh/config.zsh`
