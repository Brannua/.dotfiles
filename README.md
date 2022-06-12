
## 使用方式

首先确保已经成功配置并开启了系统代理，能够以较好的网速访问互联网

然后将本仓库 clone 至本地

将本仓库中的 vimrc 文件重命名为 .vimrc 进而移动到家目录 ~/ 下

根据 bashrc 文件的内容安装所需的软件包，以及所需的文件

然后将本仓库中的 bashrc 文件重命名为 .bashrc_custom 进而移动到家目录 ~/ 下

最后执行如下命令使 bash 的配置生效

```bash
echo "[[ -f ~/.bashrc_custom ]] && . ~/.bashrc_custom" >> ~/.bashrc
source ~/.bashrc
```

