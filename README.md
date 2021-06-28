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

## 所有需要的插件

按照这个格式放在上面的 begin 和 end 之间即可， 如： 

```bash
Plug 'morhetz/gruvbox'
```

- [morhetz/gruvbox](https://github.com/morhetz/gruvbox) 主题配色

	更多主题可以参考 [这里](https://zhuanlan.zhihu.com/p/58188561)
