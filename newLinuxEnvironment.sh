# Script to run for a new Linux Environment
# This Script is a checklist for my favorite tools 
#   This installs:
#       tree
#       oh-my-zsh
#       Powerlevel10k
#       Homebrew
#       tmux
#       direnv
#       Podman
#       Azure & AWS CLI
#       Node.js & npm
#       Terraform & Terragrunt 


# Update
sudo apt update

# Install Tree for displaying directories and files
sudo apt-get install tree

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install Powerlevel10k
brew install romkatv/powerlevel10k/powerlevel10k
echo "source $(brew --prefix)/opt/powerlevel10k/powerlevel10k.zsh-theme" >>~/.zshrc

# Install direnv for project environment variables
sudo apt-get install direnv

# Install Homebrew for package management 
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install tmux for split screen
sudo apt-get install tmux 

#Install Podman
brew install podman

#Install Azure and AWS CLI 
curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install

# Install Node.js & npm
sudo apt-get install nodejs
sudo apt-get install npm

# Intall Terraform & Terragrunt for Iac
brew tap hashicorp/tap
brew install hashicorp/tap/terraform
brew install terragrunt


echo "Note install mesloLGS NF font"