#!/usr/bin/env bash

# Install Homebrew if it's not already installed
which -s brew
if [[ $? != 0 ]] ; then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Install taps
brew tap pivotal/tap
brew tap caskroom/cask
brew tap caskroom/fonts

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade --all

################################################################################
# CUSTOM

# Install taps
brew tap pivotal/tap
brew tap caskroom/cask
brew tap caskroom/fonts

# Dev

brew cask install java
brew install maven
brew cask install visual-studio-code
brew install node
brew cask install virtualbox
brew cask install virtualbox-extension-pack
brew cask install vagrant
brew cask install chefdk
brew cask install soapui
brew install gpg
#brew cask install dockertoolbox
brew cask install fugu
brew install watch
brew cask install keystore-explorer
brew install basex
brew cask install hex-fiend
brew install springboot
brew install openssl
brew link --force openssl
brew install heroku
brew cask install unetbootin

# Office

brew cask install adobe-reader
brew cask install evernote
brew cask install microsoft-lync
brew cask install microsoft-lync-plugin

# Internet

brew cask install google-chrome
brew cask install jdownloader
brew install cntlm
brew cask install transmission
brew cask install whatsapp

# Games

brew cask install battle-net
brew cask install steam
brew cask install remote-play

# Fonts

brew cask install font-inconsolata

# Other

brew cask install keka
brew cask install ledger

################################################################################

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names
# Install Bash 4.
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before
# running `chsh`.
brew install bash
brew tap homebrew/versions
brew install bash-completion2

# Switch to using brew-installed bash as default shell
if ! fgrep -q '/usr/local/bin/bash' /etc/shells; then
  echo '/usr/local/bin/bash' | sudo tee -a /etc/shells;
  chsh -s /usr/local/bin/bash;
fi;

# Install `wget` with IRI support.
brew install wget --with-iri

# Install RingoJS and Narwhal.
# Note that the order in which these are installed is important;
# see http://git.io/brew-narwhal-ringo.
brew install ringojs
brew install narwhal

# Install more recent versions of some macOS tools.
brew install vim --override-system-vi
brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh
brew install homebrew/dupes/screen
brew install homebrew/php/php56 --with-gmp

# Install font tools.
brew tap bramstein/webfonttools
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install woff2

# Install some CTF tools; see https://github.com/ctfs/write-ups.
brew install aircrack-ng
brew install bfg
brew install binutils
brew install binwalk
brew install cifer
brew install dex2jar
brew install dns2tcp
brew install fcrackzip
brew install foremost
brew install hashpump
brew install hydra
brew install john
brew install knock
brew install netpbm
brew install nmap
brew install pngcheck
brew install socat
brew install sqlmap
brew install tcpflow
brew install tcpreplay
brew install tcptrace
brew install ucspi-tcp # `tcpserver` etc.
#brew install xpdf
brew install xz

# Install other useful binaries.
brew install ack
brew install dark-mode
#brew install exiv2
brew install git
brew install git-lfs
brew install imagemagick --with-webp
brew install lua
brew install lynx
brew install p7zip
brew install pigz
brew install pv
brew install rename
brew install rhino
brew install speedtest_cli
brew install ssh-copy-id
brew install testssl
brew install tree
brew install vbindiff
brew install webkit2png
brew install zopfli

# Remove outdated versions from the cellar.
brew cleanup
