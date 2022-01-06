VS_CODE_EXTENSIONS=(
    be5invis.vscode-icontheme-nomo-dark 
    konradkeska.outerspace-next
    ms-vscode-remote.remote-containers
    ms-vscode-remote.remote-ssh
    ms-vscode-remote.remote-ssh-edit
    ms-vscode-remote.remote-wsl
    ms-vscode-remote.vscode-remote-extensionpack
    ms-python.python
    kevinglasson.cornflakes-linter
    hashicorp.terraform
)
for EXTENSION in $VS_CODE_EXTENSIONS; do
    code --install-extension $EXTENSION
done

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install Misc
brew install wget
brew install coreutils      # Gives us GNU compat tools prefixed with "g"
brew install node
brew install jq
brew install tree
brew install flake8
brew install circleci
brew install the_silver_searcher
brew install grep #   PATH="/usr/local/opt/grep/libexec/gnubin:$PATH"


brew tap wallix/awless
brew install awless


# Install zshell
brew install zsh
chsh -s /usr/local/bin/zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
curl --quiet https://raw.githubusercontent.com/ns-phennessy/.files/master/zsh-theme > ~/.oh-my-zsh/custom/themes/patrick.zsh-theme
curl --quiet https://raw.githubusercontent.com/ns-phennessy/.files/master/zshrc > ~/.zshrc
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Install Git
brew install git
curl --quiet https://raw.githubusercontent.com/ns-phennessy/.files/master/gitconfig > ~/.gitconfig

# Install Tmux
brew install tmux
curl --quiet https://raw.githubusercontent.com/ns-phennessy/.files/master/tmux.conf > ~/.tmux.conf

# Install Vim
brew install vim
curl --quiet https://raw.githubusercontent.com/ns-phennessy/.files/master/vimrc > ~/.vimrc

# Install AWS CLI
curl "https://awscli.amazonaws.com/AWSCLIV2.pkg" -o "AWSCLIV2.pkg"
sudo installer -pkg AWSCLIV2.pkg -target /

# Install Terraform
wget -P /tmp/ -k --no-check-certificate https://releases.hashicorp.com/terraform/0.14.4/terraform_0.14.4_darwin_amd64.zip
unzip /tmp/terraform_0.14.4_linux_amd64.zip -d tmp/
mv /tmp/terraform /usr/local/bin/terraform

# Install Packer
wget -P /tmp/ -k --no-check-certificate https://releases.hashicorp.com/packer/1.6.6/packer_1.6.6_darwin_amd64.zip
unzip /tmp/packer_1.6.6_darwin_amd64.zip -d tmp/
mv /tmp/packer /usr/local/bin/packer

# Install Pyenv
brew install pyenv pyenv-virtualenv
pyenv install 3.6.12
pyenv global 3.6.12

pip install ec2instanceconnectcli
pip install pre-commit
