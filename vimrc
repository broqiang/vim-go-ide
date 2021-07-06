" latex数学公式支持
" Plug 'iamcco/mathjax-support-for-mkdp'
" 基于 Ubuntu 20.04 的配置， 其他发行版本未做测试

" ======================== 一些初始配置 ===========================
" 关闭兼容模式, 如果需要使用原始的 vi 模式， 配置： set compatible
" 默认就是关闭的， 如果不管，就无法使用 vim 的高级功能，包括下面的配置
set nocompatible

" 打开文件类型检测
filetype plugin indent on

" 定义快捷键的前缀，即<Leader> ， 默认是 \ ， 按的时候不太方便
let mapleader=";"

if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" 行列相关配置
set number " 显示绝对行号
set relativenumber " 显示相对行号， 会覆盖上面选项
" 设置切换绝对行号和相对行号的快捷键， 这个需要的时候切换提高效率
" 这里默认是相对行号， 需要绝对行号时候可以通过快捷键修改
nmap <Leader>nn :set relativenumber<CR>
nmap <Leader>nu :set norelativenumber<CR>
set cursorline " 突出显示当前所在行
" set cursorcolumn " 突出显示当前列

" tab 缩进
" 设置Tab长度为4空格， 只是显示， 真实的还是一个 tab
set tabstop=4 
" 设置输入的 tab 转换成 4 个空格，这里只允许指定文件启用这个设置
au BufRead,BufNewFile *.md call SetTabToSpace()
function SetTabToSpace()
    set shiftwidth=4  " 转换 4 个空格
    set expandtab     " 实时生效，配合 shiftwidth 
	set softtabstop=4 " 删除时候的行为， 也会同时删除 4 个空格
endfunction
" 继承前一行的缩进方式
set autoindent

" 开启实时搜索，随着你输入查询字串，显示不同的搜索结果
set incsearch
" 搜索时大小写不敏感
set ignorecase

" 退出插入模式指定类型的文件自动保存
au InsertLeave *.go,*.md write

" =================================================================


" 插件开始的位置
call plug#begin('~/.vim/plug')

" 主题配色 
Plug 'morhetz/gruvbox' 

" 状态栏插件，包括显示行号，列号，文件类型，文件名，以及Git状态
Plug 'vim-airline/vim-airline'
" 状态栏目插件的主题，使用后可以使颜色看起来更加突出一点
Plug 'vim-airline/vim-airline-themes'

" 用来提供一个导航目录的侧边栏
Plug 'scrooloose/nerdtree'
" nerdtree 中显示 git 状态
Plug 'Xuyuanp/nerdtree-git-plugin'

" markdown 预览
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
" markdown 中 latex 数学公式支持
" Plug 'iamcco/mathjax-support-for-mkdp'

" 插件结束的位置，插件全部放在此行上面
call plug#end()


" ======================== 主题配色设置 ===========================
" 开启24bit的颜色，开启这个颜色会更漂亮一些
set termguicolors
" 主题配色
colorscheme gruvbox 
" 主题背景 dark-深色; light-浅色
set background=light 
" =================================================================


" ======================== vim-airline 插件配置 ===================
" 状态栏目使用主题， 还可以使用 dark， simple， solarized light 等
" 更多主题 https://github.com/vim-airline/vim-airline/wiki/Screenshots
let g:airline_theme='light' 
" 安装字体后，启用这个选项后在状态栏可以看到图标
" 需要先安装 powerline 字体才可以 sudo apt-get install fonts-powerline
" 如果没有安装 powerline 字体不要启用这个选项，否则会显示乱码
let g:airline_powerline_fonts = 1
" 启动顶部的 tabline ， 可以显示打开的 buffers， 显示多 tab 标签
let g:airline#extensions#tabline#enabled = 1
" 设置切换 tab 标签（buffer）的快捷键
let g:airline#extensions#tabline#buffer_idx_mode = 1
 nmap <leader>1 <Plug>AirlineSelectTab1
 nmap <leader>2 <Plug>AirlineSelectTab2
 nmap <leader>3 <Plug>AirlineSelectTab3
 nmap <leader>4 <Plug>AirlineSelectTab4
 nmap <leader>5 <Plug>AirlineSelectTab5
 nmap <leader>6 <Plug>AirlineSelectTab6
 nmap <leader>7 <Plug>AirlineSelectTab7
 nmap <leader>8 <Plug>AirlineSelectTab8
 nmap <leader>9 <Plug>AirlineSelectTab9
 nmap <leader>0 <Plug>AirlineSelectTab0
 nmap <leader>h <Plug>AirlineSelectPrevTab
 nmap <leader>l <Plug>AirlineSelectNextTab
" =================================================================


" ======================== markdwon 插件配置 ======================
" 更多的配置见 https://github.com/iamcco/markdown-preview.nvim
" vim 打开markdown 文档是否自动预览， 0 - 否， 1 - 是， 默认： 0
" let g:mkdp_auto_start = 1

" 关闭 markdown 是否自动关闭预览文件， 0 - 否， 1 - 是， 默认： 1
" let g:mkdp_auto_close = 1

" 在启动 markdown 预览时是否在终端回显 url
" 如显示： Preview page: http://127.0.0.1:8472/page/1
let g:mkdp_echo_preview_url = 1
" =================================================================


" ======================== nerdtree 插件配置 ======================
" 设置一个打开的快捷键， 如我的就是 " + b 打开， 再按一次关闭
nnoremap <leader>b :NERDTreeToggle<CR>
" 导航目录展开的符号
let g:NERDTreeDirArrowExpandable = '▸' 
" 导航目录关闭的符号
let g:NERDTreeDirArrowCollapsible = '▾' 
" =================================================================


