# My Dotfiles

Draws heavily from [Zack Holman's dotfiles](https://github.com/holman/dotfiles) as well as [Derek M Franks' dotfiles](https://github.com/defrank). 

## Getting Started
Keep in mind that this is my own personal setup so I might make changes without documentating them here first. Thus ensure you 
have a backup of your system before running the commands below. 

If you are on a new macOS, `git` has a dependency on **Xcode Command Line Tools** which you can 
install by running `gcc` in terminal first. 

To get started: run this: 

```sh
git clone https://github.com/msuzoagu/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
script/bootstrap
```


## How Things Work
Supported shell is [Zsh](https://zsh.sourceforge.io). 

1. Everything's built around topic areas. If you're adding a new area to your forked dotfiles — say, "Java" — you can simply add a `java` directory and put files in there. 

2. Anything with an extension of `.zsh` is automatically loaded into your shell.
    - In `zsh/zshrc.symlink`, we read and execute all files with .zsh extension via [source command](https://linuxcommand.org/lc3_man_pages/sourceh.html)
    
3. Anything with an extension of `.symlink` gets symlinked into **$HOME** when you run `script/bootstrap`.
    - Read `install_dotfiles` function in `script/bootstrap`.


4. Anything in `bin/**` gets added to your `$PATH`. 
    - Read `zsh/fpath.zsh` as well as `zsh/config.zsh`


## On chruby, ruby-install, ruby-build, and openssl
[ruby-install](https://github.com/postmodern/ruby-install) is used to install different versions of Ruby and [chruby](https://github.com/postmodern/chruby) is used to switch to a specific version.

#### openssl and ruby-build
[ruby-build](https://github.com/rbenv/ruby-build) will download and build its own instance of OpenSSL. If you use a utility like ruby-build (or something like rbenv which relies on ruby-build), then this is important. By default ruby-build will download and build it’s own instance of OpenSSL. We want it to use the one we installed, and this compile option does that:

>`export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@3)"`

On macOS I tend to leave system version of softwares alone, opting instead to use Homebrew to install packages/software needed. To get the specific OpenSSL version you need to use setup `RUBY_CONFIGURE_OPTS` above, run: 
> `brew list | grep openssl`

As of **04/23/23**, this version was 
> `openssl@3: stable 3.1.0 (bottled) [keg-only]` 

hence the use of `brew --prefix openssl@3` in the compile option above.


## Issues Encountered