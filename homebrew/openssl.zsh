## add the OpenSSL executables to our pa
export PATH="/opt/homebrew/opt/openssl@3/bin:$PATH"

## helps with code compilation errors you might encounter
export LIBRARY_PATH="$LIBRARY_PATH:/opt/homebrew/opt/openssl@3/lib/"

## changes how Ruby is built on your machine by making sure that any
## ruby built via ruby-build uses the OpenSSL installed by homebrew
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@3)"