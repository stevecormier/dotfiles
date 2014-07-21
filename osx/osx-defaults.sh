#!/bin/bash

# Always use Finder's list view
defaults write com.apple.Finder FXPreferredViewStyle Nlsv
# Show volumes on desktop
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowRemovableMediasOnDesktop -bool true
defaults write com.apple.finder ShowMountedServersOnDesktop -bol true
# enable tap to click
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# SSD-specific tweaks

# Disable local Time Machine snapshots
sudo tmutil disablelocal
# Disable hibernation (speed up entering sleep mode)
sudo pmset -a hibernatemode 0
# Turn off sudden motion sensor
sudo pmset -a sms 0
# Remove sleep image file
sudo rm /Private/var/vm/sleepimage
# and replace with blank file
sudo touch /Private/var/vm/sleepimage
sudo chflags uchg /Private/var/vm/sleepimage

