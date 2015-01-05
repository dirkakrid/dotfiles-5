[ ! -x $(whiff go) ] && return

# Set GOPATH
export GOPATH=$HOME/Devel/go

#Add GOPATH/bin to path
append_path $GOPATH/bin

# Add  gocellar libexec/bin to path
if [ $(uname | tr "[:upper:]" "[:lower:]") == "darwin" ]; then
  append_path "$(brew --prefix go)/libexec/bin"
fi
