#-------------------------------------------------------------------------------
# Add the OpenSSL executables to our path
#-------------------------------------------------------------------------------
export PATH="/opt/homebrew/opt/openssl@3/bin:$PATH"

#-------------------------------------------------------------------------------
# Belps with code compilation errors you might encounter
#-------------------------------------------------------------------------------
export LIBRARY_PATH="$LIBRARY_PATH:/opt/homebrew/opt/openssl@3/lib/"
