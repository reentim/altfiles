set nocompatible

let g:autosave = 1

set autoindent
set backspace=indent,eol,start
set backup
set backupdir=/tmp//
set dir=/tmp//
set encoding=utf-8
set fillchars+=vert:\ "
set foldmethod=indent
set foldminlines=0
set grepformat=%f:%l:%c:%m
set grepprg=ag\ --vimgrep\ $*
set hidden
set history=10000
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set listchars=tab:▸\ ,eol:↵,extends:>,precedes:<,trail:.,space:.
set mouse=a
set nocursorline
set noequalalways
set nofoldenable
set nojoinspaces
set nowrap
set nu
set re=1 " Use the old vim regex engine for faster syntax highlighting
set ruler
set shell=bash
set shiftwidth=2
set showcmd
set showmatch
set showmode
set showtabline=2
set smartcase
set smartindent
set softtabstop=2
set splitbelow
set splitright
set t_Co=256
set tabstop=4
set tags+=.git/tags
set ttimeout
set ttimeoutlen=10
set ttyfast
set ttymouse=sgr " 'The mouse works even in columns beyond 223'
set undodir=/tmp//
set undofile
set wildmenu
set winheight=16
set winwidth=72

filetype plugin indent on
syntax on

augroup vimrc
  autocmd!

  autocmd BufLeave,FocusLost * silent! wall
augroup END

augroup vimrc_autosave
  autocmd!

  if exists("g:autosave")
    autocmd InsertLeave,TextChanged * silent! update
  endif
augroup END

let mapleader = ','

cnoremap %% <C-r>=expand('%:.:h').'/'<CR>
inoremap <C-J> ->
inoremap <C-L> =><space>
inoremap jk <ESC>
nnoremap / /\v
nnoremap ; :
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <leader>er :source $MYVIMRC<CR>
nnoremap <leader>ev :edit $MYVIMRC<CR>
nnoremap <leader>h :split<CR>
nnoremap <leader>p :set invpaste<CR>
nnoremap <leader>w :vsplit<CR>
nnoremap <silent> <CR> :nohl<CR>
nnoremap Y y$
vnoremap / /\v
vnoremap <silent> * :<C-u>
      \ let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
      \ gvy/<C-r><C-r>=substitute(
      \ escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
      \ gV:call setreg('"', old_reg, old_regtype)<CR>
