# source `brew --prefix`/opt/asdf/libexec/asdf.sh

# GRC colorizes nifty unix tools all over the place
if (( $+commands[asdf] )) && (( $+commands[brew] ))
then
  source `brew --prefix`/opt/asdf/libexec/asdf.sh
fi
