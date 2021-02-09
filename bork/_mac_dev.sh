eval $(op signin my)

ok brew sublime-text
if satisfying; then
	mkdir -p "$HOME/Library/Application Support/Sublime Text 3/Packages"
	ln -s $HOME/code/dotfiles/sublime-settings/ "$HOME/Library/Application Support/Sublime Text 3/Packages/User"
	op get item lqzl36cxtfdtjfb5krwhxgfa64 --fields reg_code > "$HOME/code/dotfiles/sublime-settings/Theme - Monokai Pro.sublime-settings"
fi

ok brew telnet
ok brew dash
ok brew mysql
ok check "brew services start mysql"
ok brew postgres
ok mas 497799835 Xcode
ok mas 1388020431 DevCleaner
ok mas 1450874784 Transporter
ok mas 1037126344 Apple Configurator 2
ok brew transmit
ok brew sequel-pro
ok brew psequel
ok brew ngrok

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
ok gem mysql2
ok gem pg
