# Remove Press and hold for accents
defaults write -g ApplePressAndHoldEnabled -bool false
# Finder List View For All
defaults write com.apple.Finder FXPreferredViewStyle Nlsv
# Disable the sound effects on boot
sudo nvram SystemAudioVolume=" "
# Save to disk (not to iCloud) by default
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false
# Disable the “Are you sure you want to open this application?” dialog
defaults write com.apple.LaunchServices LSQuarantine -bool false
# Fast Repeat 
defaults write NSGlobalDomain KeyRepeat -int 1
defaults write NSGlobalDomain InitialKeyRepeat -int 10
# Unhide the ~/Library folder
chflags nohidden ~/Library
# Turn on app auto-update
defaults write com.apple.commerce AutoUpdate -bool true
