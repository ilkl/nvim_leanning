" ===
" === Auto load for first time uses
" ===
if empty(glob('~/.config/nvim/plugged'))
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

let mapleader=" "
syntax on "字符高亮
set number
set relativenumber
set cursorline "光标线
set wrap "换行
set showcmd "底下显示指令
set wildmenu "命令行菜单

set clipboard^=unnamed,unnamedplus
"hi CursorLine cterm=bold ctermfg=NONE ctermbg=NONE
"set cul

set hlsearch "搜索高亮
"搜索后去掉高亮
exec "nohlsearch" 
set incsearch "边搜边高亮
set ignorecase "搜索忽略大小写
set smartcase  "智能大小写
noremap <LEADER><CR> :nohlsearch<CR>


noremap <c-s> :w!<CR>
inoremap <c-s>  <ESC>:w!<CR>
noremap <c-q> :q!<CR>
inoremap jj <Esc>l
noremap <c-r> :source $MYVIMRC<CR>


call plug#begin('~/.config/nvim/plugged')
     Plug 'vim-airline/vim-airline'
     Plug 'morhetz/gruvbox'
     Plug 'connorholyday/vim-snazzy'
     Plug 'mhinz/vim-startify'
call plug#end()
"let g:gruvbox_sign_colum='bg'
"colorscheme gruvbox
"let g:SnazzyTransparent = 1
colorscheme snazzy
