ok cask sublime-text
if satisfying; then
	mkdir -p "$HOME/Library/Application Support/Sublime Text 3/Packages"
	ln -s $HOME/code/dotfiles/sublime-settings/ "$HOME/Library/Application Support/Sublime Text 3/Packages/User"
fi

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
ok check "chruby $(cat $HOME/.ruby-version)"
if check_failed && satisfying; then
	ruby-install ruby $(cat $HOME/.ruby-version)
	chruby $(cat $HOME/.ruby-version)
fi
ok gem bundler
ok gem jekyll
ok gem rails
