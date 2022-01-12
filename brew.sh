#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update
# Upgrade any already-installed formulae.
brew upgrade
# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"
# Install a modern version of Bash.
brew install bash
# Install `wget` with IRI support.
brew install wget --with-iri
# Install more recent versions of some macOS tools.
brew install vim
brew install grep
# Install IOS development-related binaries
brew install cocoapods
# Install custom binaries
brew install avrdude # keyboard
brew install avr-binutils
brew install mosquitto # mqtt broker
brew install numpy
brew installl opencv
brew install qt
brew install rbenv
brew install tinygo
brew install cmake
brew install docker-cloud
brew install libtensorflow
brew install tree
# Install language binaries
brew install dart 
brew install node
brew install go 
brew install terraform
brew install ruby
brew install ruby-build

# Install db binaries
brew install mongodb
brew install redis
brew install sqlite
# Remove outdated versions from the cellar.
brew cleanup
