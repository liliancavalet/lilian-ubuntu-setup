sudo apt-get update

#echo '----------------> Installing chrome' 
#wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
#sudo dpkg -i google-chrome-stable_current_amd64.deb

#echo '----------------> Installing slack' 
#wget https://downloads.slack-edge.com/linux_releases/slack-desktop-3.3.8-amd64.deb
#sudo apt install ./slack-desktop-*.deb -y

#echo '----------------> Installing vim'
#sudo apt install vim -y
#clear

#echo '----------------> Installing curl' 
#sudo apt install curl -y

#echo '----------------> Installing tool to handle clipboard via CLI'
#sudo apt-get install xclip -y

#echo '----------------> Installing git' 
#sudo apt install git -y

#echo "----------------> What name do you want to use in GIT user.name?"
#echo "----------------> For example, mine will be \"Erick Wendel\""
#read git_config_user_name
#git config --global user.name "$git_config_user_name"
#clear 

#echo "----------------> What email do you want to use in GIT user.email?"
#echo "----------------> For example, mine will be \"erick.workspace@gmail.com\""
#read git_config_user_email
#git config --global user.email $git_config_user_email
#clear

#echo "----------------> Can I set VIM as your default GIT editor for you? (y/n)"
#read git_core_editor_to_vim
#if echo "$git_core_editor_to_vim" | grep -iq "^y" ;then
#	git config --global core.editor vim
#else
#	echo "----------------> Okay, no problem. :) Let's move on!"
#fi

#echo "----------------> Generating a SSH Key"
#ssh-keygen -t rsa -b 4096 -C $git_config_user_email
#ssh-add ~/.ssh/id_rsa
#echo "----------------> Remeber to add this SSH key to your favorite web-based version control repository hosting service"
#cat ~/.ssh/id_rsa.pub | xclip -selection clipboard

#echo '----------------> Installing nvm'
#sh -c "$(curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash)"

#echo '----------------> Manual install'
#export NVM_DIR="$HOME/.nvm" && (
#git clone https://github.com/creationix/nvm.git "$NVM_DIR"
#cd "$NVM_DIR"
#git checkout `git describe --abbrev=0 --tags --match "v[0-9]*" $(git rev-list --tags --max-count=1)`
#) && \. "$NVM_DIR/nvm.sh"

#echo '----------------> Loads nvm'
#export NVM_DIR="$HOME/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

#echo '----------------> Setting Node.js version 12'
#source ~/.zshrc
#nvm --version
#nvm install 12
#nvm alias default 12
#echo '----------------> Node.js version'
#node --version
#echo '----------------> NPM version'
#npm --version

#echo '----------------> Installing Java 8 and 11 (open JDK)'
#echo '----------------> Default version will be Java 8'
#sudo apt-get install openjdk-8-jdk -y
#sudo apt-get install openjdk-11-jdk -y
#echo '----------------> Do you wanna set a specific version as default, if not 8 will be the default? (y/n)'
#read java_version_as_default
#if echo "$java_version_as_default" | grep -iq "^y" ;then
#	echo '----------------> Installed Java versions'
#	sudo update-java-alternatives --list
#	echo '----------------> Paste the desired Java version path'
#	read java_version_path
#	sudo update-java-alternatives --set $java_version_path
#	echo '----------------> Setting JAVA_HOME'
#	echo JAVA_HOME=$java_version_path  >> ~/.zshrc
#else
#	echo "----------------> Okay, no problem Java 8 will be the default. :) Let's move on!"
#fi
#echo '----------------> Java version'
#java -version

#echo '----------------> Installing GCC compiler'
#sudo apt install build-essential
#sudo apt-get install manpages-dev
#gcc --version

#echo '----------------> Installing VScode'
#curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
#sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
#sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
#sudo apt-get install apt-transport-https -y
#sudo apt-get update
#sudo apt-get install code -y # or code-insiders

#echo '----------------> Installing extensions'
#echo '----------------> C/C++ language support' 
#code --install-extension ms-vscode.cpptools

#code --install-extension dbaeumer.vscode-eslint
#code --install-extension christian-kohler.path-intellisense
#code --install-extension dbaeumer.vscode-eslint
#code --install-extension dracula-theme.theme-dracula
#code --install-extension esbenp.prettier-vscode
#code --install-extension foxundermoon.shell-format
#code --install-extension pmneo.tsimporter
#code --install-extension waderyan.gitblame
#code --install-extension yzhang.markdown-all-in-one


#echo '----------------> Installing terminator'
#sudo apt-get update
#sudo apt-get install terminator -y
#
#echo '----------------> Adding dracula theme'
#cat <<EOF >  ~/.config/terminator/config
#[global_config]
#  title_transmit_bg_color = "#ad7fa8"
#[keybindings]
#  close_term = <Primary>w
#  close_window = <Primary>q
#  new_tab = <Primary>t
#  new_window = <Primary>i
#  paste = <Primary>v
#  split_horiz = <Primary>e
#  split_vert = <Primary>d
#  switch_to_tab_1 = <Primary>1
#  switch_to_tab_10 = <Primary>0
#  switch_to_tab_2 = <Primary>2
#  switch_to_tab_3 = <Primary>3
#  switch_to_tab_4 = <Primary>4
#  switch_to_tab_5 = <Primary>5
#  switch_to_tab_6 = <Primary>6
#[layouts]
#  [[default]]
#    [[[child1]]]
#      parent = window0
#      type = Terminal
#    [[[window0]]]
#      parent = ""
#      type = Window
#[plugins]
#[profiles]
#  [[default]]
#    cursor_color = "#aaaaaa"
#EOF
#
#cat <<EOF >>  ~/.config/terminator/config
#[[Dracula]]
#    background_color = "#1e1f29"
#    background_darkness = 0.88
#    background_type = transparent
#    copy_on_selection = True
#    cursor_color = "#bbbbbb"
#    foreground_color = "#f8f8f2"
#    palette = "#000000:#ff5555:#50fa7b:#f1fa8c:#bd93f9:#ff79c6:#8be9fd:#bbbbbb:#555555:#ff5555:#50fa7b:#f1fa8c:#bd93f9:#ff79c6:#8be9fd:#ffffff"
#    scrollback_infinite = True
#EOF
#
#echo '----------------> Installing docker'
#sudo apt-get remove docker docker-engine docker.io
#sudo apt install docker.io -y
#sudo systemctl start docker
#sudo systemctl enable docker
#docker --version
#
#chmod 777 /var/run/docker.sock
#docker run hello-world
#
#echo '----------------> Installing docker-compose'
#sudo curl -L "https://github.com/docker/compose/releases/download/1.24.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
#sudo chmod +x /usr/local/bin/docker-compose
#docker-compose --version
#
#echo '----------------> Installing aws-cli'
#sudo apt-get install awscli -y
#aws --version
#curl "https://s3.amazonaws.com/session-manager-downloads/plugin/latest/ubuntu_64bit/session-manager-plugin.deb" -o "session-manager-plugin.deb"
#sudo dpkg -i session-manager-plugin.deb
#session-manager-plugin --version
#
#echo '----------------> Installing autosuggestions for Z shell'
#git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
#echo "source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ~/.zshrc
#source ~/.zshrc
#
#echo '----------------> Enabling workspaces for both screens'
#gsettings set org.gnome.mutter workspaces-only-on-primary false
#
#echo '----------------> Installing brave'
#curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -
#source /etc/os-release
#echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ $UBUNTU_CODENAME main" | sudo tee /etc/apt/sources.list.d/brave-browser-release-${UBUNTU_CODENAME}.list
#sudo apt update
#sudo apt install brave-keyring brave-browser

#echo '----------------> Installing Z shell'
#sudo apt-get install zsh -y

#echo '----------------> Installing Z theme: af-magic'
#sed -i 's/.*ZSH_THEME=.*/ZSH_THEME="af-magic"/g' ~/.zshrc

#echo '----------------> Installing git integration (oh-my-zsh) for Z shell'
#sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
#chsh -s /bin/zsh



