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

+ [vim-airline vim 窗口状态栏](https://github.com/vim-airline/vim-airline)

+ [vim-airline-themes 状态栏的主题](https://github.com/vim-airline/vim-airline-themes)

+ [preservim/nerdtree vim 中文件系统浏览器](https://github.com/preservim/nerdtree)

+ [Xuyuanp/nerdtree-git-plugin 在 NERDTree 中显示 git 状态](https://github.com/Xuyuanp/nerdtree-git-plugin)

+ [ryanoasis/vim-devicons 显示图标，包括导航栏和状态栏](https://github.com/ryanoasis/vim-devicons)

+ [airblade/vim-gitgutter 文档中显示 git 信息](https://github.com/airblade/vim-gitgutter)

+ [iamcco/markdown-preview.nvim markdown 文档预览](https://github.com/iamcco/markdown-preview.nvim)

+ [SirVer/ultisnips](https://github.com/SirVer/ultisnips) 和
    [honza/vim-snippets](https://honza/vim-snippets) 两个插件配合， 生成代码片段

+ [coc.nvim 代码自动完成](https://github.com/neoclide/coc.nvim)

## coc.nvim 配置

详细的文档见 [https://github.com/neoclide/coc.nvim](https://github.com/neoclide/coc.nvim)

coc.nvim 需要 [nodejs](https://nodejs.org/en/download/) 支持。

### 安装 coc 的json 和 lsp 支持

```bash
:CocInstall coc-json coc-tsserver
```

### coc-snippets 代码片段支持

如果使用了这个插件， 上面的 SirVer/ultisnips 不再使用

详细的配置见 vimrc 文件的 coc.nvim 插件配置部分

#### 配置 coc Language servers

+ go 语言支持

    1. 需要提前配置好 go 环境，见 [https://golang.google.cn/](https://golang.google.cn/) 和 [https://goproxy.cn/](https://goproxy.cn/)

    1. 安装 gopls

    ```bash
    go get golang.org/x/tools/gopls@latest
    ```

    1. 安装 coc-go ， 在 vim 中运行下面命令
    ```bash
    :CocInstall coc-go
    ```

+ shell 支持，在 vim 中执行下面命令

```bash
:CocInstall coc-sh
```

+ 更多语言的支持见 [官方文档](https://github.com/neoclide/coc.nvim/wiki/Language-servers) ， 可以根据需要安装
