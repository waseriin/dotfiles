/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# test -d ~/.linuxbrew && eval $(~/.linuxbrew/bin/brew shellenv)
# test -d /home/linuxbrew/.linuxbrew && eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
# test -r ~/.common_profile && echo "eval \$($(brew --prefix)/bin/brew shellenv)" >>~/.common_profile
# echo "eval \$($(brew --prefix)/bin/brew shellenv)" >>~/.common_profile

echo 'eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)' >> $HOME/.common_profile
eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
