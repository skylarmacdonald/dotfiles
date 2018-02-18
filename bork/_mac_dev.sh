ok cask sublime-text
ok cask dash
ok brew mysql
ok check "brew services start mysql"
ok brew ruby-install
ok brew chruby
ok mas 497799835 Xcode
ok cask transmit

# This may not work...
if [ ! -d $HOME/.rubies ]; then
	ok check "ruby-install ruby $(cat ~/.ruby-version)"
fi
ok check "source /usr/local/opt/chruby/share/chruby/chruby.sh"
ok check "source /usr/local/opt/chruby/share/chruby/auto.sh"
ok gem bundler
