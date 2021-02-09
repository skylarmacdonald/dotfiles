bork_any_updated=0

# set icon size
ok defaults com.apple.dock tilesize float 36
# minimize windows to application
ok defaults com.apple.dock minimize-to-application bool true
# Show indicatior lights for open apps
ok defaults com.apple.dock show-process-indicators bool true
# don't re-order spaces in mission control
ok defaults com.apple.dock mru-spaces bool false
# speed up Mission Control animations
ok defaults com.apple.dock expose-animation-duration float 0.1
# Don’t group windows by application in Mission Control
# (i.e. use the old Exposé behavior instead)
ok defaults com.apple.dock expose-group-by-app bool false
# Disable Dashboard
ok defaults com.apple.dashboard mcx-disabled bool true
# Don’t show recent applications in Dock
ok defaults com.apple.dock show-recents bool false
# Disable the Launchpad gesture (pinch with thumb and three fingers)
ok defaults com.apple.dock showLaunchpadGestureEnabled int 0
# Make Dock icons of hidden applications translucent
ok defaults com.apple.dock showhidden bool true

if any_updated; then
  killall Dock
fi
