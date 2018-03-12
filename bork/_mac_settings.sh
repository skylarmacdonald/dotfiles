### GENERAL
# auto-expand save boxes
ok defaults NSGlobalDomain NSNavPanelExpandedStateForSaveMode bool true
ok defaults NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 bool true
# auto-expand print boxes
ok defaults NSGlobalDomain PMPrintingExpandedStateForPrint bool true
ok defaults NSGlobalDomain PMPrintingExpandedStateForPrint2 bool true
# Save to disk (not to iCloud) by default
ok defaults NSGlobalDomain NSDocumentSaveNewDocumentsToCloud bool false
# Automatically quit printer app once the print jobs complete
ok defaults com.apple.print.PrintingPrefs "Quit When Finished" bool true
# Disable the “Are you sure you want to open this application?” dialog
ok defaults com.apple.LaunchServices LSQuarantine bool false
# Disable Resume system-wide
ok defaults com.apple.systempreferences NSQuitAlwaysKeepsWindows bool false
# do not ask to use new disks for Time Machine
ok defaults com.apple.TimeMachine DoNotOfferNewDisksForBackup bool true
# ask for password immediately after starting screensaver or sleep
ok defaults com.apple.screensaver askForPassword -int 1
ok defaults com.apple.screensaver askForPasswordDelay -int 0

# Disable the all too sensitive backswipe on trackpads
ok defaults com.google.Chrome AppleEnableSwipeNavigateWithScrolls bool false
ok defaults com.google.Chrome.canary AppleEnableSwipeNavigateWithScrolls bool false
# Disable the all too sensitive backswipe on Magic Mouse
ok defaults com.google.Chrome AppleEnableMouseSwipeNavigateWithScrolls bool false
ok defaults com.google.Chrome.canary AppleEnableMouseSwipeNavigateWithScrolls bool false

# Disable Notification Center and remove the menu bar icon
launchctl unload -w /System/Library/LaunchAgents/com.apple.notificationcenterui.plist 2> /dev/null

include _mac_settings_dock.sh
include _mac_settings_finder.sh
include _mac_settings_safari.sh
include _mac_settings_input.sh
