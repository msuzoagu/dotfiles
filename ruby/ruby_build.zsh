## changes how Ruby is built on your machine by 
## making sure that any ruby built via ruby-build 
## and ruby-install uses OpenSSL installed by homebrew
### since this env variable is used by both ruby-build 
### and ruby-install only need to set it once
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@3)"