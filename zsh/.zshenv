
# IF CARGO AND GO ARE INSTALLED
if [[ -d "$HOME/.cargo" && -d "$HOME/go" ]]; then
  export GOPATH="$HOME/go" # default packages installation path
  export PATH="$GOPATH/bin:$HOME/.cargo/bin:$PATH"
  . "$HOME/.cargo/env"
else
  echo -e "\033[0;31mWARNING: Cargo and Go are not installed\033[0m"
fi

# >>> eval homebrew <<<
if [[ `uname` == "Linux" ]]; then
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
    export PATH="$HOME/.local/share/coursier/bin:$PATH"
else
    eval "$(/opt/homebrew/bin/brew shellenv)"
    export PATH="/Users/$USER/Library/Application Support/Coursier/bin:$PATH"
fi

export K9S_CONFIG_DIR=~/.config/k9s
