set nocompatible
set encoding=utf-8
set termencoding=utf-8
set fileencodings=utf-8,gb2312,gbk,gb18030
" vundle config
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
" vundle plugin list
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-scripts/phd'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'mileszs/ack.vim'
Plugin 'majutsushi/tagbar'
Plugin 'humiaozuzu/TabBar'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-fugitive'
Plugin 'derekwyatt/vim-fswitch'
Plugin 'kshenoy/vim-signature'
Plugin 'vim-scripts/BOOKMARKS--Mark-and-Highlight-Full-Lines'
Plugin 'vim-scripts/DfrankUtil'
Plugin 'dyng/ctrlsf.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-scripts/DrawIt'
Plugin 'SirVer/ultisnips'
Plugin 'derekwyatt/vim-protodef'
Plugin 'honza/vim-snippets'
Plugin 'scrooloose/nerdtree'
Plugin 'gcmt/wildfire.vim'
Plugin 'sjl/gundo.vim'
Plugin 'suan/vim-instant-markdown'
Plugin 'lilydjwg/fcitx.vim'
Plugin 'Yggdroot/indentLine'
Plugin 'Valloric/YouCompleteMe'
Plugin 'dense-analysis/ale'
Plugin 'Chiel92/vim-autoformat'
call vundle#end()

" load corresponding plugins based on different types detected
filetype plugin on
" detect type of file
filetype on

syntax on
set background=dark
colorscheme monokai
"colorscheme solarized
set t_Co=256
set noshowmode

" enable mouse
set mouse=a
set selection=exclusive
set selectmode=mouse,key
" show line number
set number
set autoindent
set smartindent
" disable wrap
set nowrap

" show cursor location
set ruler
" show status bar
set laststatus=2

" highlight current line
set cursorline
set cursorcolumn

" split window on right pane
set splitright
set splitbelow

set showcmd
set incsearch
set hlsearch
set ignorecase

" auto reload on file modify by outter application
set autoread

" how many lines under cursor
noremap j jzz
noremap k kzz
noremap n nzz
noremap <s-n> <s-n>zz
noremap * *zz
noremap # #zz
noremap <c-o> <c-o>zz
noremap <c-i> <c-i>zz

" status bar style
" let g:Powerline_colorscheme='solarized256'

set nowrap
" insertmode move cursor
inoremap <Leader>h <c-o>h
inoremap <Leader>j <c-o>j
inoremap <Leader>k <c-o>k
inoremap <Leader>l <c-o>l

" <Leader> key
let mapleader=";"
" make configuration changes take effect immediately
autocmd BufWritePost $MYVIMRC source $MYVIMRC
" vim cmd autocomplete
set wildmenu
" show tab
set listchars=tab:>-,trail:-
" paste from system clipboard
vnoremap <Leader>p "+p
"copy to system clipboard
vnoremap <Leader>y "+y

" save read only file
nnoremap <Leader>x :w !sudo tee %<CR>
" enable insert model backspace not working
set backspace=2
"code smart indent
filetype indent on
set expandtab
" set tabstop=2
" set shiftwidth=2
autocmd BufNewFile,BufRead *.py set shiftwidth=2
" code fold method
set foldmethod=indent
set foldenable

" 使用 NERDTree 插件查看工程文件。设置快捷键，速记：file list
nmap <Leader>b :NERDTreeToggle<CR>
nmap <F6> :NERDTreeToggle<cr>
" 设置NERDTree子窗口宽度"
let NERDTreeWinSize=32
" 设置NERDTree子窗口位置
let NERDTreeWinPos="left"
" 显示隐藏文件
let NERDTreeShowHidden=1
" NERDTree 子窗口中不显示冗余帮助信息
let NERDTreeMinimalUI=1
" 删除文件时自动删除文件对应 buffer
let NERDTreeAutoDeleteBuffer=1
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\~$','\.pyc','\.swp']
let NERDTreeShowBookmarks=1
let NERDChristmasTree=0

" indentline
let g:indentLine_enabled=1
" Vim
let g:indentLine_color_term = 102
let g:indentLine_bgcolor_term = 235
let g:indentLine_char = '¦'
let g:indentLine_first_char = '|'
let g:indentLine_showFirstIndentLevel = 0

" GVim
let g:indentLine_color_gui = '#A4E57E'
let g:indentLine_bgcolor_gui = '#262626'

" none X terminal
let g:indentLine_color_tty_light = 7 " (default: 4)
let g:indentLine_color_dark = 1 " (default: 2)

" UltiSnips 的 tab 键与 YCM 冲突，重新设定
let g:UltiSnipsExpandTrigger="<leader><tab>"
let g:UltiSnipsJumpForwardTrigger="<leader><tab>"
let g:UltiSnipsJumpBackwardTrigger="<leader><s-tab>"

" YCM Config
let g:ycm_server_python_interpreter='/usr/bin/python3.6'
let g:ycm_min_num_of_chars_for_completion = 2
"字符串中也开启补全
let g:ycm_complete_in_strings = 1
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_complete_in_comments = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 0
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_confirm_extra_conf = 0
let g:ycm_add_preview_to_completeopt = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1
nnoremap <Leader>f :YcmCompleter GoToDeclaration<CR>|
nnoremap <Leader>g :YcmCompleter GoToDefinition<CR>|
nnoremap <Leader>d :YcmCompleter GoToDefinitionElseDeclaration<CR>|
let g:ycm_error_symbol = 'E:'
let g:ycm_warning_symbol = 'W:'

" edit config
" move line to up
nnoremap <C-k> ddkP
" move linte to down
nnoremap <C-j> ddp

" autoformat
nnoremap <Leader>r :Autoformat<CR>
inoremap <Leader>r <C-o>:Autoformat<CR>
let g:formatter_yapf_style = '~/.config/yapf/style.cfg'
let g:formatdef_yapf="'yapf --style=\"{based_on_style:'.g:formatter_yapf_style.',indent_width:2}\" -l '.a:firstline.'-'.a:lastline"
let g:formatters_python = ['yapf']
let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
let g:autoformat_remove_trailing_spaces = 0

" python3 syntax
let g:python_highlight_all = 1

" ale for python3 
let g:ale_set_highlights = 0
"自定义error和warning图标
let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚡'
""在vim自带的状态栏中整合ale
let g:ale_statusline_format = ['✗ %d', '⚡ %d', '✔ OK']
"显示Linter名称,出错或警告等相关信息
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
""打开文件时不进行检查
let g:ale_lint_on_enter = 0
" 普通模式下，sp前往上一个错误或警告，sn前往下一个错误或警告
nmap sp <Plug>(ale_previous_wrap)
nmap sn <Plug>(ale_next_wrap)
" <Leader>s触发/关闭语法检查
nmap <Leader>s :ALEToggle<CR>
" <Leader>d查看错误或警告的详细信息
nmap <Leader>d :ALEDetail<CR>
" 使用clang对c和c++进行语法检查，对python使用pylint进行语法检查
let g:ale_linters = {
                   \       'c++': ['clang'],
                   \       'c': ['clang'],
                   \       'python': ['pylint','flake8'],
                   \}

" let g:syntastic_python_checkers = ['pylint', 'flake8']
" let g:syntastic_python_python_exe = 'python3'

" flak8
" autocmd BufWritePost *.py call Flake8()
" let g:flake8_quickfix_height = 7
" let g:flake8_show_in_file = 1
" let g:flake8_quickfix_location="topleft"

" tabbar
let g:Tb_MaxSize = 2
let g:Tb_TabWrap = 1

hi Tb_Normal guifg=white ctermfg=white
hi Tb_Changed guifg=green ctermfg=green
hi Tb_VisibleNormal ctermbg=252 ctermfg=235
hi Tb_VisibleChanged guifg=green ctermbg=252 ctermfg=white

" Tagbar
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
nmap <F5> :TagbarToggle<cr>
nmap <Leader>t :TagbarToggle<cr>
let g:tagbar_left=0
let g:tagbar_width=30
let g:tagbar_autofocus = 1
let g:tagbar_sort = 0
let g:tagbar_compact = 1

" airline config
let g:airline_theme="molokai"
let g:airline_powerline_fonts = 1
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#whitespace#symbol = '!'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
if !exists('g:airline_symbols')
   let g:airline_symbols = {}
endif
let g:airline_symbols.branch = '⭠'
let g:airline_symbols.readonly = '⭤'

" gundo config
let g:gundo_prefer_python3 = 1
nmap <F3> :GundoToggle<cr>
nmap <Leader>u :GundoToggle<cr>
