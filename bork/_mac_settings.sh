### GENERAL
# Increase window resize speed for Cocoa applications
ok defaults NSGlobalDomain NSWindowResizeTime float 0.001
# Only show scrollbars when scrolling
ok defaults NSGlobalDomain AppleShowScrollBars string "WhenScrolling"
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
# Check for software updates daily, not just once per week
ok defaults com.apple.SoftwareUpdate ScheduleFrequency int 1
# do not ask to use new disks for Time Machine
ok defaults com.apple.TimeMachine DoNotOfferNewDisksForBackup bool true
# ask for password immediately after starting screensaver or sleep
ok defaults com.apple.screensaver askForPassword int 1
ok defaults com.apple.screensaver askForPasswordDelay int 0
# Disable the crash reporter
ok defaults com.apple.CrashReporter DialogType string "none"

# Enable the debug menu in Disk Utility
ok defaults com.apple.DiskUtility DUDebugMenuEnabled bool true
ok defaults com.apple.DiskUtility advanced-image-options bool true

# Disable Notification Center and remove the menu bar icon
launchctl unload -w /System/Library/LaunchAgents/com.apple.notificationcenterui.plist 2> /dev/null

if satisfying; then
	defaults write com.apple.systemuiserver menuExtras -array \
		"/System/Library/CoreServices/Menu Extras/AirPort.menu" \
		"/System/Library/CoreServices/Menu Extras/Battery.menu" \
		"/System/Library/CoreServices/Menu Extras/Clock.menu"

	for domain in ~/Library/Preferences/ByHost/com.apple.systemuiserver.*; do
		defaults write "${domain}" dontAutoLoad -array \
			"/System/Library/CoreServices/Menu Extras/TimeMachine.menu" \
			"/System/Library/CoreServices/Menu Extras/Volume.menu" \
			"/System/Library/CoreServices/Menu Extras/User.menu"
	done
fi



include _mac_settings_appstore.sh
include _mac_settings_chrome.sh
include _mac_settings_dock.sh
include _mac_settings_finder.sh
include _mac_settings_safari.sh
include _mac_settings_input.sh
