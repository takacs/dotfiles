# https://macos-defaults.com

# ctrl+cmd drag window
defaults write -g NSWindowShouldDragOnGesture YES

# hide dock
defaults write com.apple.dock "autohide" -bool "true"

# set dock size
defaults write com.apple.dock "tilesize" -int "38"

# dock animation time
defaults write com.apple.dock "autohide-time-modifier" -float "0.5"

# don't show recent apps
defaults write com.apple.dock "show-recents" -bool "false"

# finder
defaults write com.apple.Finder AppleShowAllFiles true
defaults write com.apple.finder "ShowPathbar" -bool "true"

killall Dock

# screenshot location
mkdir "~/Screenshots"
defaults write com.apple.screencapture "location" -string "~/Screenshots" && killall SystemUIServer


