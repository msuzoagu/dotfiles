# My Dotfiles

Draws heavily from [Zack Holman's dotfiles](https://github.com/holman/dotfiles) as well as [Derek M Franks' dotfiles](https://github.com/defrank). 

## Gettting Started
`dotfiles` do crazy things to your machine. When the crazy things are good? They are very very good. And when they are bad? You don't want to find out. 

**Build Your Own dotfiles**. 

I am not an expert (this is my own personal setup) and I do not want to responsible for doing very bad things to your machine. So please find inspiration and build your own. 


## How Things Work
To get started: 

```sh
git clone https://github.com/msuzoagu/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
script/bootstrap
```
> note to self: you are a macOS baby; get over it. 

- supported shell is [Zsh](https://zsh.sourceforge.io)

- on a new macOS, `git` has a dependency on *Xcode Command Line Tools*; install by running `gcc` in terminal first

- Everything is built around topic areas. If you're adding a new area to your forked dotfiles — say, "Java" — you can simply add a `java` directory and put files in there

- Anything with an extension of `.zsh` is automatically loaded into your shell
    - In `zsh/zshrc.symlink`, we read and execute all files with .zsh extension via [source command](https://linuxcommand.org/lc3_man_pages/sourceh.html)
    
- Anything with an extension of `.symlink` gets symlinked into **$HOME** when you run `script/bootstrap`
    - Read `install_dotfiles` function in `script/bootstrap`


- Anything in `bin/**` gets added to your `$PATH`
    - Read `zsh/fpath.zsh` as well as `zsh/config.zsh`

## Issues Encountered
- [ruby-install](https://github.com/postmodern/ruby-install) is used to install different versions of Ruby and [chruby](https://github.com/postmodern/chruby) is used to switch to a specific version. [ruby-build](https://github.com/rbenv/ruby-build) will download and build its own instance of OpenSSL. If you use a utility like ruby-build (or something like rbenv which relies on ruby-build), then this is important. By default ruby-build will download and build it’s own instance of OpenSSL. We want it to use the one we installed, and this compile option does that: `export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@3)"`

    + On macOS leave system version of softwares alone and use Homebrew to install packages/software needed
    
    + To get the specific OpenSSL version you need to setup *RUBY_CONFIGURE_OPTS* above, run `brew list | grep openssl`. As of **04/23/23**, this version was `openssl@3: stable 3.1.0 (bottled) [keg-only]` hence the use of `brew --prefix openssl@3` in the compile option above