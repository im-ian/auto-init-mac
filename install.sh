# !/bin/bash

# choose type
echo "[1] Back-End"
echo "[2] Front-End"
read -p "choose your install type[1|2 or skip install]: " type

# install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/opt/homebrew/bin/brew shellenv)"

brew bundle --file=./common.BrewFile

if [ "$type" = "1" ]; then
	brew bundle --file=./be.BrewFile
elif [ "$type" = "2" ]; then
	brew bundle --file=./fe.BrewFile
fi

# configure aws-cli
eval "$(/opt/homebrew/bin/aws shellenv)"
aws configure

# configure zsh
chmod 755 ./zsh/install.sh
eval "$(/opt/homebrew/bin/zsh shellenv)"
./zsh/install.sh
chsh -s /bin/zsh

printf '\n\n🎉 Congrat! Your mac has been set up successfully for working with B.S!\n'