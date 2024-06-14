set nocompatible
set updatetime=300
set autoread
set encoding=utf-8
set termencoding=utf-8
set fileencodings=utf-8,gb2312,gbk,gb18030
set tabpagemax=10
set signcolumn=yes
filetype off

" vim-plug
call plug#begin('~/.vim/plugged')
Plug 'altercation/vim-colors-solarized'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mileszs/ack.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-fugitive'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'derekwyatt/vim-fswitch'
Plug 'kshenoy/vim-signature'
Plug 'vim-scripts/BOOKMARKS--Mark-and-Highlight-Full-Lines'
Plug 'dyng/ctrlsf.vim'
Plug 'Yggdroot/LeaderF',{'do':':LeaderfInstallCExtension'}
Plug 'scrooloose/nerdcommenter'
Plug 'vim-scripts/DrawIt'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'derekwyatt/vim-protodef'
Plug 'scrooloose/nerdtree'
"Plug 'fholgado/minibufexpl.vim'
Plug 'gcmt/wildfire.vim'
Plug 'sjl/gundo.vim'
Plug 'Lokaltog/vim-easymotion'
Plug 'suan/vim-instant-markdown'
" Plug 'lilydjwg/fcitx.vim'
Plug 'Yggdroot/indentLine'
Plug 'dense-analysis/ale'
Plug 'Chiel92/vim-autoformat'
Plug 'heavenshell/vim-pydocstring'
Plug 'mhinz/vim-signify'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'yaegassy/coc-pylsp', {'do': 'yarn install --frozen-lockfile'}
call plug#end()

" map  <leader> key
let mapleader=";"

" load corresponding plugins based on different types detected
"code smart indent
filetype plugin indent on

syntax on
set background=dark
colorscheme monokai
"colorscheme solarized
set t_Co=256
set noshowmode

set noai nosi
set pastetoggle=<F3>

" enable mouse
set mouse=r
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

set textwidth=79
set colorcolumn=+1
set showcmd
set incsearch
set hlsearch
nnoremap <leader>h :noh<cr>
set ignorecase

" display question
set conceallevel=0

" auto reload on file modify by outter application
set autoread

" config virtualedit
set virtualedit=onemore,block,insert

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
let g:powerline_colorscheme='solarized256'

set nowrap
" insertmode move cursor

noremap <leader>c <Esc>
inoremap <c-c> <Esc>
inoremap jk <Esc>


" make configuration changes take effect immediately
autocmd BufWritePost $MYVIMRC source $MYVIMRC

" vim cmd autocomplete
set wildmenu
" show tab
set listchars=tab:>-,trail:-
" paste from system clipboard
noremap <leader>p "+p
"copy to system clipboard
noremap <leader>y "+y

nnoremap <leader>w :w<cr>
inoremap <leader>w <Esc>:w<cr>
vnoremap <leader>w <Esc>:w<cr>

nnoremap <leader>q :q<cr>
inoremap <leader>q <Esc>:wq<cr>
" save read only file
nnoremap <leader>x :w !sudo tee %<cr>
inoremap <leader>x <Esc>:w !sudo tee %<cr>
vnoremap <leader>x <Esc>:w !sudo tee %<cr>

vnoremap <leader>g <c-g>
" enable insert model backspace not working
set backspace=2
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
" autocmd BufNewFile,BufRead *.py set shiftwidth=4
" autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab
" code fold method
set foldmethod=syntax
set nofoldenable
noremap zk za

" edit config
" move line to up
noremap <c-k> ddkP

" move linte to down
noremap <c-j> ddp

" insert blank line below
nnoremap <silent><c-l> :set paste<cr>m`o<esc>``:set nopaste<cr>

" insert blank line above
nnoremap <silent><s-l> :set paste<cr>m`O<esc>``:set nopaste<cr>

" buffer switch
nnoremap Bn :bn<cr>
nnoremap Bp :bp<cr>
nnoremap Br :br<cr>
nnoremap Bl :bl<cr>
nnoremap B1 :bfirst<cr>
nnoremap B2 :bfirst<cr>:1bn<cr>
nnoremap B3 :bfirst<cr>:2bn<cr>
nnoremap B4 :bfirst<cr>:3bn<cr>
nnoremap B5 :bfirst<cr>:4bn<cr>
nnoremap B6 :bfirst<cr>:5bn<cr>
nnoremap B7 :bfirst<cr>:6bn<cr>
nnoremap B8 :bfirst<cr>:7bn<cr>
nnoremap B9 :bfirst<cr>:8bn<cr>
nnoremap Bd :bd<cr>:bn<cr>



" 使用 NERDTree 插件查看工程文件。设置快捷键，速记：file list
nmap <Leader>b :NERDTreeToggle %<cr>
nmap <F6> :NERDTreeToggle %<cr>
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
let NERDTreeIgnore=['\~$','\.pyc','\.swp','^__pycache__$','^\.git$']
let NERDTreeShowBookmarks=1
let NERDChristmasTree=0
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
let g:plug_window = 'noautocmd vertical topleft new'

" nerdcommenter config

let g:NERDSpaceDelims=1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDToggleCheckAllLines = 1

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

" autoformat
noremap <Leader>r :Autoformat<cr>
let g:formatter_yapf_style = 'google'
let g:formatdef_yapf="'yapf --style=\"{based_on_style:'.g:formatter_yapf_style.',indent_width:4}\" -l '.a:firstline.'-'.a:lastline"
let g:formatters_python = ['yapf']
let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
let g:autoformat_remove_trailing_spaces = 1

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
""打开文件时进行检查
let g:ale_lint_on_enter = 1
" 只在光标所在的行才显示virtualtext
let g:ale_virtualtext_cursor = 1
" 普通模式下，sp前往上一个错误或警告，sn前往下一个错误或警告
nmap sp <Plug>(ale_previous_wrap)
nmap sn <Plug>(ale_next_wrap)
" <Leader>s触发/关闭语法检查
nmap <Leader>s :ALEToggle<cr>
" <Leader>d查看错误或警告的详细信息
nmap <Leader>d :ALEDetail<cr>
" 使用clang对c和c++进行语法检查，对python使用pylint进行语法检查
let g:ale_linters = {
                   \       'c': ['clang'],
                   \       'c++': ['clang'],
                   \       'python': ['pylint'],
                   \}

" UltiSnips 的 tab 键与 YCM 冲突，重新设定
let g:UltiSnipsExpandTrigger="<leader><tab>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

" coc config
" 确保 coc.nvim 的片段跳转键与 UltiSnips 一致
let g:coc_snippet_next = '<c-j>'
let g:coc_snippet_prev = '<c-k>'
"
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()

inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

noremap <silent><expr> <CR>
        \ coc#pum#visible() ? coc#pum#confirm():
        \ "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <c-@> coc#refresh()

" GoTo code navigation
nmap <silent> gk <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gu <Plug>(coc-references)
nmap <silent> gm <Plug>(coc-rename)

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
      call CocActionAsync('doHover')
  else
      call feedkeys('K', 'in')
  endif
endfunction

" Use K to show documentation in preview window
noremap <silent> K :call ShowDocumentation()<CR>

" Highlight the symbol and its references when holding the cursor
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming

" airline config
let g:airline_theme="molokai"
let g:airline_powerline_fonts = 1
let g:airline#extensions#whitespace#enabled = 1
let g:airline#extensions#whitespace#symbol = ' '
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#buffer_idx_mode = 1

if !exists('g:airline_symbols')
   let g:airline_symbols = {}
endif
let g:airline_left_sep = '|'
let g:airline_left_alt_sep = '|'
let g:airline_right_sep = '|'
let g:airline_right_alt_sep = '|'
let g:airline_symbols.branch = 'Y'
let g:airline_symbols.paste = 'P'
let g:airline_symbols.readonly = '🔒'
let g:airline_symbols.colnr = 'C:'
let g:airline_symbols.linenr = 'L'
let g:airline_symbols.maxlinenr = ' '
let g:airline_symbols.dirty='!'
let g:airline_symbols.whitespace=' '
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = '?'

nmap <leader>1 <plug>Airlineselecttab1
nmap <leader>2 <plug>Airlineselecttab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <leader>p <Plug>AirlineSelectPrevTab
nmap <leader>n <Plug>AirlineSelectNextTab
nmap <leader>= :tabnew<cr>
nmap <leader>- :tabclose<cr>

" gundo config
let g:gundo_prefer_python3 = 1
nmap <Leader>o :GundoToggle<cr>

" pydoctring config

let g:pydocstring_doq_path='/usr/local/bin/doq'
let g:pydocstring_formatter = 'numpy'
nmap <silent> <C-H>d <Plug>(pydocstring)

" config persistentr undo
if has('persistent_undo')  " check if vim support it
        set undofile " turn on persistentr undo feature
        set undodir=$HOME/.vim/undo  " directory where undo file will be stored
endif

" ack config
" 使用 leader + a search
cnoreabbrev Ack Ack!
nnoremap <leader>a :Ack!<Space>

if executable('rg')
        let g:ackprg = 'rg --vimgrep --type-not sql --smart-case'
endif

" 高亮搜索关键词
let g:ackhighlight = 1

" Auto close the Quickfix list after pressing '<enter>' on a list item
let g:ack_autoclose = 1

" Any empty ack search will search for the work the cursor is on
let g:ack_use_cword_for_empty_search = 1

" vim-signify config
let g:signify_vcs_list = ['git']

if filereadable("custom.vim")
        so custom.vim
endif


