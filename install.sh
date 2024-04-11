# !/bin/bash

# choose type
echo "[1] Back-End"
echo "[2] Front-End"
echo "[3] Data Engineer"
read -p "choose your install type[1|2|3 or skip install if not input.]: " type

# install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/opt/homebrew/bin/brew shellenv)"

brew bundle --file=./BrewFile.common

if [ "$type" = "1" ]; then
	brew bundle --file=./BrewFile.be
elif [ "$type" = "2" ]; then
	brew bundle --file=./BrewFile.fe
elif [ "$type" = "3" ]; then	
	brew bundle --file=./BrewFile.de
fi

# configure aws-cli
aws configure

# configure zsh
chmod 755 ./zsh/install.sh
./zsh/install.sh
chsh -s /bin/zsh

printf '\n\n🎉 Congrat! Your mac has been set up successfully for working with B.S!\n'
