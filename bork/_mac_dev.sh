eval $(op signin klebe-macdonald)

ok cask sublime-text
if satisfying; then
	mkdir -p "$HOME/Library/Application Support/Sublime Text 3/Packages"
	ln -s $HOME/code/dotfiles/sublime-settings/ "$HOME/Library/Application Support/Sublime Text 3/Packages/User"
	op get item mioskhtiezckbap3iexulkdt4e | jq -r '.details.sections[0].fields[] | select(.n=="reg_code").v' > "$HOME/Library/Application Support/Sublime Text 3/Local/License.sublime_license"
	op get item mioskhtiezckbap3iexulkdt4e | jq -r '.details.sections[5].fields[] | select(.n=="D59700F799724CF6AC3D3DF30B1C2420").v' > "$HOME/code/dotfiles/sublime-settings/Theme - Monokai Pro.sublime-settings"
fi

ok cask dash
ok brew mysql
ok check "brew services start mysql"
ok cask postgres
ok mas 497799835 Xcode
ok cask transmit
ok cask sequel-pro
ok cask psequel

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
