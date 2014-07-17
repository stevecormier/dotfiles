#!/bin/bash

# Always use Finder's list view
defaults write com.apple.Finder FXPreferredViewStyle Nlsv

# SSD-specific tweaks

# Disable local Time Machine snapshots
sudo tmutil disablelocal

# Disable hibernation (speed up enterins sleep mode)
sudo pmset -a hibernatemode 0

sudo rm /Private/var/vm/sleepimage
sudo touch /Private/var/vm/sleepimage
sudo chflags uchg /Private/var/vm/sleepimage

sudo pmset -a sms 0


