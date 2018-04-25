# Install command-line tools using Homebrew

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

# Install GNU core utilities (those that come with macOS are outdated)
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`
brew install coreutils

# Install some other useful utilities like `sponge`
brew install moreutils

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed
brew install findutils

# Install GNU `sed`, overwriting the built-in `sed`
brew install gnu-sed --with-default-names

# Install GnuPG to enable PGP-signing commits
brew install gnupg

# Install Bash
brew install bash
brew install bash-completion@2

# Install Zsh
brew install zsh
brew install zsh-completions

if ! fgrep -q '/usr/local/bin/bash' /etc/shells; then
  echo '/usr/local/bin/bash' | sudo tee -a /etc/shells
fi

if ! fgrep -q '/usr/local/bin/zsh' /etc/shells; then
  echo '/usr/local/bin/zsh' | sudo tee -a /etc/shells
  chsh -s /usr/local/bin/zsh
fi

# Install `wget` with IRI support
brew install wget --with-iri

# Install more recent versions of some macOS tools
brew install vim --with-override-system-vi
brew install grep
brew install openssh
brew install screen
brew install tmux

# Install development environment
brew install cmake
brew install git
brew install python
brew install node
brew install go
brew install protobuf
brew install nvm
brew install pyenv
brew install ctags
brew install ripgrep
brew install the_silver_searcher

# Install other useful binaries
brew install autojump
brew install binutils
brew install clang-format
brew install ffmpeg
brew install grip
brew install htop
brew install httpie
brew install jq
brew install markdown
brew install mycli
brew install ssh-copy-id
brew install tree
brew install unrar

# Install fonts
brew cask install font-hack

# Remove outdated versions from the cellar
brew cleanup
