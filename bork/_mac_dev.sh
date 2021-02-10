eval $(op signin my)

ok cask sublime-text
if satisfying; then
	mkdir -p "$HOME/Library/Application Support/Sublime Text 3/Packages"
	ok symlink "$HOME/Library/Application Support/Sublime Text 3/Packages/User" $HOME/code/dotfiles/sublime-settings/
	op get item lqzl36cxtfdtjfb5krwhxgfa64 --fields reg_code > "$HOME/code/dotfiles/sublime-settings/Theme - Monokai Pro.sublime-settings"
fi

ok brew telnet
ok cask dash
ok brew mysql
ok check "brew services start mysql"
ok cask postgres
ok mas 497799835 Xcode
ok mas 1388020431 DevCleaner
ok mas 1450874784 Transporter
ok mas 1037126344 Apple Configurator 2
ok mas 1295203466 Microsoft Remote Desktop
ok cask transmit
ok cask sequel-pro
ok cask psequel
ok cask ngrok
ok brew python@3.9
ok brew node
ok brew yarn
ok brew go
ok brew jq
ok brew certbot
ok brew doctl
ok brew awscli
ok cask balenaetcher
ok cask cyberduck
ok cask wireshark

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

ok brew terraform
ok brew-tap heroku/brew
ok brew heroku
ok brew-tap goreleaser/tap
ok brew goreleaser
ok brew gh
ok brew bats
ok brew-tap stripe/stripe-cli
ok brew stripe
ok brew packer
