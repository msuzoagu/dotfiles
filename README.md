# My Dotfiles

Draws heavily from [Zack Holman's dotfiles](https://github.com/holman/dotfiles) as well as [Derek M Franks' dotfiles](https://github.com/defrank). 


## How Things Work
Supported shell is [Zsh](https://zsh.sourceforge.io). 

Everything's built around topic areas. If you're adding a new area to your forked dotfiles — say, "Java" — you can simply add a `java` directory and put files in there. 

Anything with an extension of `.zsh` is automatically loaded into your shell. **How?** 
> 
>>In `zsh/zshrc.symlink`, we read and execute all files with .zsh extension via [source command](https://linuxcommand.org/lc3_man_pages/sourceh.html)


Anything with an extension of `.symlink` gets symlinked into `$HOME` when you run `script/bootstrap`. **How?** 
> 
>> Read `install_dotfiles` function in `script/bootstrap`.


Anything in `bin/**` gets added to your `$PATH`. **How?**
> 
>> Read `zsh/fpath.zsh` as well as `zsh/config.zsh`


## chruby and ruby-install
ruby-install is used to install different versions of Ruby and chruby is used to switch to a specific version.

## openssl and ruby-build
`ruby-build` will download and build its own instance of OpenSSL. 
If you use a utility like ruby-build (or something like rbenv which relies on ruby-build), then this is important. By default ruby-build will download and build it’s own instance of OpenSSL. We want it to use the one we’ve installed, and this compile option does that:

>`export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@3)"`

macOS is shipped with its own build of OpenSSL. On macOS I tend to leave system version of softwares alone; opting to use Homebrew to install softwares I need. To get the specific version you need to use setup `RUBY_CONFIGURE_OPTS` above, run: 

> brew list | grep openssl 

As of **04/23/23**, version was `openssl@3: stable 3.1.0 (bottled) [keg-only]` hence the setting of `brew --prefix openssl@3`. 


## Issues Encountered


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
