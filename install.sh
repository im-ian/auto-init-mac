# !/bin/bash

# install brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# install via brew
brew bundle --file=./Brewfile

sudo xattr -dr com.apple.quarantine /Applications/GitKraken.app
sudo xattr -dr com.apple.quarantine /Applications/MySQLWorkbench.app
sudo xattr -dr com.apple.quarantine /Applications/Postman.app
sudo xattr -dr com.apple.quarantine /Applications/Google\ Chrome.app
sudo xattr -dr com.apple.quarantine /Applications/iTerm.app
sudo xattr -dr com.apple.quarantine /Applications/KakaoTalk.app
sudo xattr -dr com.apple.quarantine /Applications/Owly.app
sudo xattr -dr com.apple.quarantine /Applications/IntelliJ\ IDEA.app
sudo xattr -dr com.apple.quarantine /Applications/Slack.app
sudo xattr -dr com.apple.quarantine /Applications/Docker.app

# configure aws-cli
aws configure

# configure zsh
chmod 755 ./zsh/install.sh
./zsh/install.sh
