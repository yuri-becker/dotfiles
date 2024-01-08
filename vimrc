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

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'valloric/youcompleteme'
Plug 'flazz/vim-colorschemes'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'tpope/vim-surround'
call plug#end()

colorscheme PerfectDark

nmap <Tab> <C-w>w
" Move current line up with CMD+UP
nnoremap <C-S-Up> :move-2<CR>==
inoremap <C-S-Up> <Esc>:move-2<CR>==gi
vnoremap <C-S-Up> :move'>+<CR>gv=gv

" Move current line down with CMD+DOWN
nnoremap <C-S-Down> :move+<CR>==
inoremap <C-S-Down> <Esc>:move+<CR>==gi
vnoremap <C-S-Down> :move'>-2<CR>gv=gv

autocmd VimEnter * NERDTree | wincmd p
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
set gfn=MesloLGS-NF-Regular:h24


au FileType gitcommit setlocal tw=50

