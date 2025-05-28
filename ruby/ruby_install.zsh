## tells the linker where to find the OpenSSL libraries. Without this,
## build process will use system OpenSSL instead of Homebrew one
### -L flag adds that dir to the library search path during compilation
export LDFLAGS="-L$(brew --prefix openssl@3)/lib"

## tells C preprocessor where to find header files for OpenSSL
### -I flag adds include dir to search path for headers like openssl/ssl.h
export CPPFLAGS="-I$(brew --prefix openssl@3)/include"

## helps tools like pkg-config locate metadata about OpenSSL installation
export PKG_CONFIG_PATH="$(brew --prefix openssl@3)/lib/pkgconfig"