### GENERAL
# auto-expand save boxes
ok defaults NSGlobalDomain NSNavPanelExpandedStateForSaveMode bool true
ok defaults NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 bool true
# auto-expand print boxes
ok defaults NSGlobalDomain PMPrintingExpandedStateForPrint bool true
ok defaults NSGlobalDomain PMPrintingExpandedStateForPrint2 bool true
# do not ask to use new disks for Time Machine
ok defaults com.apple.TimeMachine DoNotOfferNewDisksForBackup bool true
# ask for password immediately after starting screensaver or sleep
ok defaults com.apple.screensaver askForPassword -int 1
ok defaults com.apple.screensaver askForPasswordDelay -int 0

include _mac_settings_dock.sh
include _mac_settings_finder.sh
include _mac_settings_safari.sh
