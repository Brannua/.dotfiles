
## 使用方式

> 中国大陆用户首先应确保能以较好的网速科学上网

```bash
mkdir -p ~/Code && cd ~/Code
git clone https://github.com/Brannua/.dotfiles.git dotfiles --depth=1

ln -s ~/Code/dotfiles/vimrc ~/.vimrc
ln -s ~/Code/dotfiles/bashrc ~/.bashrc
ln -s ~/Code/dotfiles/gitconfig ~/.gitconfig

# 根据 bashrc 文件的内容，安装所需的软件包，准备所需的文件（then re-login）
```

