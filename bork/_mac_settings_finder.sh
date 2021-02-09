bork_any_updated=0

# Set Home Directory as the default location for new Finder windows
# For other paths, use `PfLo` and `file:///full/path/here/`
ok defaults com.apple.finder NewWindowTarget string "PfHm"
ok defaults com.apple.finder NewWindowTargetPath string "file://${HOME}/"

# Show icons for hard drives, servers, and removable media on the desktop
ok defaults com.apple.finder ShowExternalHardDrivesOnDesktop bool false
ok defaults com.apple.finder ShowHardDrivesOnDesktop bool true
ok defaults com.apple.finder ShowMountedServersOnDesktop bool false
ok defaults com.apple.finder ShowRemovableMediaOnDesktop bool true

# When performing a search, search the current folder by default
ok defaults com.apple.finder FXDefaultSearchScope string "SCcf"

# Disable the warning when changing a file extension
ok defaults com.apple.finder FXEnableExtensionChangeWarning bool false

# Avoid creating .DS_Store files on network or USB volumes
ok defaults com.apple.desktopservices DSDontWriteNetworkStores bool true
ok defaults com.apple.desktopservices DSDontWriteUSBStores bool true

# Disable disk image verification
ok defaults com.apple.frameworks.diskimages skip-verify bool true
ok defaults com.apple.frameworks.diskimages skip-verify-locked bool true
ok defaults com.apple.frameworks.diskimages skip-verify-remote bool true

# Automatically open a new Finder window when a volume is mounted
ok defaults com.apple.frameworks.diskimages auto-open-ro-root bool true
ok defaults com.apple.frameworks.diskimages auto-open-rw-root bool true
ok defaults com.apple.finder OpenWindowForNewRemovableDisk bool true

# Use icon view in all Finder windows by default
ok defaults com.apple.finder FXPreferredViewStyle string "icnv"

# Disable the warning before emptying the Trash
ok defaults com.apple.finder WarnOnEmptyTrash bool false

# Enable snap-to-grid for icons on the desktop and in other icon views
if satisfying; then
	/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist
	/usr/libexec/PlistBuddy -c "Set :FK_StandardViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist
	/usr/libexec/PlistBuddy -c "Set :StandardViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist
fi

# Expand the following File Info panes:
# “General”, “Open with”, and “Sharing & Permissions”
# Does not use Bork syntax as difficult to do with a dict
defaults write com.apple.finder FXInfoPanesExpanded -dict General -bool true OpenWith -bool true Privileges -bool true

if any_updated; then
  killall Finder
fi
