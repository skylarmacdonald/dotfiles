#!/usr/bin/env bork

ok check "fdesetup status | grep 'On'"
if check_failed; then
	echo "FileVault is not set up. Please enable FileVault before continuing."
	open "/System/Library/PreferencePanels/Security.prefpane"
	exit 1
fi

if [ -n "$COMPUTER_NAME" ]; then
	echo "Setting computer's name to $COMPUTER_NAME"
	ok scutil ComputerName $COMPUTER_NAME
	ok scutil HostName $COMPUTER_NAME
	ok scutil LocalHostName $COMPUTER_NAME
fi

ok directory "$HOME/.ssh"
ok check "[ -e $HOME/.ssh/id_ed25519.pub ]"
if check_failed && satisfying; then
	echo "Generating SSH Key"
	ssh-keygen -o -a 100 -t ed25519 -f ~/.ssh/id_ed25519 -C "skylar@skylarmacdonald.com"
	echo "Please upload your new SSH key to GitHub before continuing"
	read -p "Press Return to continue" etc
fi

ok brew
ok brew git

ok directory "$HOME/code"
ok directory /usr/local/src
ok github /usr/local/src/bork skylarmacdonald/bork --branch=main --ssh
ok symlink $HOME/code/bork /usr/local/src/bork
ok symlink /usr/local/bin/bork /usr/local/src/bork/bin/bork
ok github $HOME/code/dotfiles skylarmacdonald/dotfiles --branch=main --ssh
cd ~
if [ -d "$HOME/code/dotfiles/config" ]; then
	for config in $HOME/code/dotfiles/config/*; do
		ok symlink "$HOME/.$(basename $config)" $config
	done
fi
ok brew gnupg
ok brew pinentry-mac

ok brew zsh
ok brew zsh-completions
ok brew liquidprompt
ok shells /opt/homebrew/bin/zsh
did_install && chsh -s /opt/homebrew/bin/zsh
