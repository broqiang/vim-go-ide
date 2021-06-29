# vim 开发环境配置

因为特殊原因，一年多没有摸到电脑了，准备写代码了，先配置下环境

## 配置插件管理器

[vim-plug](https://github.com/junegunn/vim-plug)

```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

编辑 `vim ~/.vimrc` ， 写入下面内容

```bash
" 插件开始的位置
call plug#begin('~/.vim/plug')

" 此处放准备安装的插件

" 插件结束的位置，插件全部放在此行上面
call plug#end()
```

配置完成后将 `.vimrc` 文件保存，再次打开， 然后输入 `:PlugInstall`，即可安装

PS: 安装时候看一下结果， 因为包都是从 github 上下载的， 因为网络原因不一定成功。



## 插件配置

按照这个格式放在上面的 begin 和 end 之间即可， 如： 

```bash
Plug 'morhetz/gruvbox'
```

+ [morhetz/gruvbox 主题配色](https://github.com/morhetz/gruvbox) 

	更多主题可以参考 [这里](https://zhuanlan.zhihu.com/p/58188561)

+ []()
