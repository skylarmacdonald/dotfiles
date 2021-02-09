# Enable the WebKit Developer Tools in the Mac App Store
ok defaults com.apple.appstore WebKitDeveloperExtras bool true
# Enable Debug Menu in the Mac App Store
ok defaults com.apple.appstore ShowDebugMenu bool true
# Enable the automatic update check
ok defaults com.apple.SoftwareUpdate AutomaticCheckEnabled bool true
# Check for software updates daily, not just once per week
ok defaults com.apple.SoftwareUpdate ScheduleFrequency int 1
# Download newly available updates in background
ok defaults com.apple.SoftwareUpdate AutomaticDownload int 1
# Install System data files & security updates
ok defaults com.apple.SoftwareUpdate CriticalUpdateInstall int 1
# Automatically download apps purchased on other Macs
ok defaults com.apple.SoftwareUpdate ConfigDataInstall int 1
# Turn on app auto-update
ok defaults com.apple.commerce AutoUpdate bool true
# Allow the App Store to reboot machine on macOS updates
ok defaults com.apple.commerce AutoUpdateRestartRequired bool true
