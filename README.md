## Auto-Init-Mac
Automatic provisioning tool for BeautySelection's backend developer on Max(OS X).  
This script will install [some essential software](https://github.com/beautyselection/auto-init-mac/blob/main/Brewfile) 
and [oh-my-zsh shell](https://github.com/ohmyzsh/ohmyzsh) with [powerlevel10k theme](https://github.com/romkatv/powerlevel10k).  
Please contribute this repository if you discover helpful tools or automations for everyone's efficiency.

### Prepare
Create the AWS access key ID and secret access key.
1. Visit the [IAM console](https://console.aws.amazon.com/iam/home?#home)
2. Select your IAM user name.
3. Select the **Security Credentials** tab and then **Create Access Key**.

### How to use
```
git clone https://github.com/beautyselection/auto-init-mac.git
cd auto-init-mac
chmod 755 install.sh
./install.sh
```

### Included software
[See Brewfile](https://github.com/beautyselection/auto-init-mac/blob/main/Brewfile)  
For customizing software list, edit `Brewfile` before run `./install.sh`.  

### Testing
After contribution, you can test this script on virtual OS X created by [docker](https://github.com/sickcodes/Docker-OSX)
or [parallels](https://www.rallyhealth.com/devops/mac-on-mac-virtualization).
