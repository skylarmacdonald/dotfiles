bork_any_updated=0

ok defaults com.apple.dock tilesize float 36

# minimize windows to application
ok defaults com.apple.dock minimize-to-application bool true
# Show indicatior lights for open apps
ok defaults com.apple.dock show-process-indicators bool true

###### Other Things
# don't re-order spaces in mission control
ok defaults com.apple.dock mru-spaces bool false

ok defaults com.apple.dock expose-animation-duration float 0.1
# Disable Dashboard
ok defaults com.apple.dashboard mcx-disabled bool true

if any_updated; then
  killall Dock
fi
