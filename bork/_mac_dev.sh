ok cask sublime-text
ok cask dash
ok brew mysql
ok check "brew services start mysql"
ok mas 497799835 Xcode
ok cask transmit
ok cask sequel-pro

ok brew ruby-install
ok brew chruby
source /usr/local/opt/chruby/share/chruby/chruby.sh
source /usr/local/opt/chruby/share/chruby/auto.sh
ok check "chruby $(cat ~/.ruby-version)"
if check_failed && satisfying; then
	ruby-install ruby $(cat ~/.ruby-version)
	chruby $(cat ~/.ruby-version)
fi
ok gem bundler
ok gem jekyll
ok gem rails