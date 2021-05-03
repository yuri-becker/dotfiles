set nocompatible

filetype plugin indent on
syntax on
set autoindent
set expandtab
set softtabstop =2
set shiftwidth =2
set shiftround

set backspace =indent,eol,start
set hidden
set laststatus =2
set display =lastline

set showmode
set showcmd

set incsearch
set hlsearch
set number

set ttyfast
set lazyredraw

set splitbelow
set splitright

set cursorline
set wrapscan
set report =0
set synmaxcol =200

set list
if has('multi_byte') && &encoding ==# 'utf-8'
  let &listchars = 'tab:▸ ,extends:❯,precedes:❮,nbsp:±'
else
  let &listchars = 'tab:> ,extends:>,precedes:<,nbsp:.'
endif


set backup
set backupdir   =$HOME/.vim/files/backup/
set backupext   =-vimbackup
set backupskip  =
set directory   =$HOME/.vim/files/swap/
set updatecount =100
set undofile
set undodir     =$HOME/.vim/files/undo/
set viminfo     ='100,n$HOME/.vim/files/info/viminfo
execute pathogen#infect()
call pathogen#helptags()

colorscheme OceanicNext
nmap <Tab> <C-w>w
autocmd VimEnter * NERDTree | wincmd p
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
set gfn=MesloLGS-NF-Regular:h24


au FileType gitcommit setlocal tw=50

