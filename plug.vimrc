" curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
" PlugInstall [name ...] [#threads]	Install plugins
" PlugUpdate [name ...] [#threads]	Install or update plugins
" PlugUpgrade	Upgrade vim-plug itself

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
" Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'ctrlpvim/ctrlp.vim'
" cd ~/.vim/plugged/YouCompleteMe && ./install.py --help || ./install.py || ./install.py --clang-completer --go-completer --ts-completer
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer --go-completer --ts-completer' }

call plug#end()


" 显示行号
set number 
" 设定 tab 长度为 4
set tabstop=4
" 使得按退格键时可以一次删掉 4 个空格
set softtabstop=4
" 设定 << 和 >> 命令移动时的宽度为 4
set shiftwidth=4
" 自动缩进
set autoindent
" 使用C样式的缩进
set cindent
" 搜索时忽略大小写，但在有一个或以上大写字母时仍保持对大小写敏感
set ignorecase smartcase
" 搜索时高亮显示被找到的文本
set hlsearch
" 不要换行
set nowrap
" 高亮当前行
"set cursorline
"highlight CursorLine   cterm=NONE ctermbg=black ctermfg=NONE guibg=NONE guifg=NONE

" 在 vim 启动的时候默认开启 NERDTree
" autocmd VimEnter * NERDTree
"map :et :NERDTreeToggle

" 记住文件上次打开的位置
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

" ctrlpvim/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*.so,*.swp,*.zip,*.png,*.jpg,*.jpeg,*.gif
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
