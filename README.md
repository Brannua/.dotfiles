
## 使用方式

1. 确保已经成功配置并开启了系统代理，能够以较好的网速访问互联网；并将本仓库 clone 至本地

2. 将文件 vimrc 重命名为 .vimrc 进而移动到家目录 ~/ 下

3. 将文件 bashrc 重命名为 .bashrc_custom 进而移动到家目录 ~/ 下

4. 根据 .bashrc_custom 文件的内容，安装所需的软件包，准备所需的文件

5. 最后执行如下命令

```bash
echo "[[ -f ~/.bashrc_custom ]] && . ~/.bashrc_custom" >> ~/.bashrc
reboot
```
