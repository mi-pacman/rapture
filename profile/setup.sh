#/bin/sh

# Installing Awesome Vim
git clone --depth=1 https://github.com/mi-pacman/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

# Installing Oh My Tmux
git clone https://github.com/mi-pacman/.tmux.git
ln -s -f .tmux/.tmux.conf
cp .tmux/.tmux.conf.local .

# Installing Oh My Zsh
pacman -Sy && pacman -S zsh
sh -c "$(wget -O- https://raw.githubusercontent.com/mi-pacman/ohmyzsh/master/tools/install.sh)"
