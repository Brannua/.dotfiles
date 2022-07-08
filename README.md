## 使用方式

> 中国大陆用户首先应确保能以较好的网速科学上网

```bash
mkdir -p ~/Code && cd ~/Code
git clone https://github.com/Brannua/.dotfiles.git dotfiles --depth=1

ln -s ~/Code/dotfiles/vim/.vimrc ~/.vimrc
ln -s ~/Code/dotfiles/shell/.inputrc ~/.inputrc
ln -s ~/Code/dotfiles/git/.gitconfig ~/.gitconfig
ln -s ~/Code/dotfiles/tmux/.tmux.conf ~/.tmux.conf

ln -s ~/Code/dotfiles/bash/.bashrc ~/.bashrc
ln -s ~/Code/dotfiles/bash/.bashrc ~/.bash_profile

ln -s ~/Code/dotfiles/ranger/rc.conf ~/.config/ranger/rc.conf
ln -s ~/Code/dotfiles/ranger/commands.py ~/.config/ranger/commands.py

# 根据 .bashrc 文件的内容，安装所需的软件包，准备所需的文件，then reload.
```

