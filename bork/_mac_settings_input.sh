# Trackpad: enable tap to click for this user and for the login screen
ok defaults com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking bool true
ok defaults NSGlobalDomain com.apple.mouse.tapBehavior int 1
ok defaults NSGlobalDomain com.apple.mouse.tapBehavior int 1

# Trackpad: map bottom right corner to right-click
ok defaults com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadCornerSecondaryClick int 2
ok defaults com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadRightClick bool true
ok defaults NSGlobalDomain com.apple.trackpad.trackpadCornerClickBehavior int 1
ok defaults NSGlobalDomain com.apple.trackpad.enableSecondaryClick bool true

# Use scroll gesture with the Ctrl (^) modifier key to zoom
ok defaults com.apple.universalaccess closeViewScrollWheelToggle bool true
ok defaults com.apple.universalaccess HIDScrollZoomModifierMask int 262144

# Stop iTunes from responding to the keyboard media keys
launchctl unload -w /System/Library/LaunchAgents/com.apple.rcd.plist 2> /dev/null

# Set language and text formats
ok defaults NSGlobalDomain AppleLanguages array "en-GB" "en"
ok defaults NSGlobalDomain AppleLocale string "en_GB@currency=GBP"
ok defaults NSGlobalDomain AppleMeasurementUnits string "Centimeters"
ok defaults NSGlobalDomain AppleMetricUnits bool true
