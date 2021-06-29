" 插件开始的位置
call plug#begin('~/.vim/plug')

" 此处放准备安装的插件
"
Plug 'morhetz/gruvbox'

" 插件结束的位置，插件全部放在此行上面
call plug#end()

" 开启24bit的颜色，开启这个颜色会更漂亮一些
set termguicolors
" 主题配色
colorscheme gruvbox 
" 主题背景 dark-深色; light-浅色
set background=light 
