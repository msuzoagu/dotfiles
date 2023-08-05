# GRC colorizes nifty unix tools all over the place
if (( $+commands[grc] )) && (( $+commands[brew] ))
then

  #---------------------------------------------------------------------
  # can't figure out why this is happening
  # i suspect it has to do with inability 
  # to find the right python version of 
  # note is that I can't find system python
  # - supposed to be in /usr/bin/python
  # and though I might be a bit slow I know 
  # enough not to delete system python
  # which makes me suspect that something 
  # changed with M1 artchitecture for python
  # https://stackoverflow.com/questions/70641757/how-to-set-python3-as-default-in-macos-monterey-macbook-air-m1#:~:text=Monterey(M1)%20has%20python2%20and%20python3%20preinstalled

  # run `where python3`
  # - have to come back to this

  # https://stackoverflow.com/questions/11910202/invoke-grc-terminal-colorizer-on-all-commands-implicitly
  #---------------------------------------------------------------------
  # source `brew --prefix`/etc/grc.zsh 
fi
