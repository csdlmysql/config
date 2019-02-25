" runtime! debian.vim

" the call to :runtime you can find below.  If you wish to change any of those
" settings, you should do it in this file (/etc/vim/vimrc), since debian.vim
" will be overwritten everytime an upgrade of the vim packages is performed.
" It is recommended to make changes after sourcing debian.vim since it alters
" the value of the 'compatible' option.
" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'vim-airline/vim-airline' | Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' } " autocomplete
Plug 'zchee/deoplete-jedi', {'for': 'python'}
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdcommenter' " tree directory and file
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' } " vim for go
Plug 'morhetz/gruvbox' " best colorcheme for human
Plug 'google/yapf', { 'rtp': 'plugins/vim', 'for': 'python' }
Plug 'shougo/vimshell.vim'
Plug 'bling/vim-bufferline' " buffer line status
Plug 'w0rp/ale' " check syntax python
call plug#end()
" autocmd VimEnter * NERDTree If using a dark background within the editing area and syntax highlighting
" turn on this option as well
set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase      " Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
set hlsearch        
set colorcolumn=80
"set hidden		" Hide buffers when they are abandoned

" mapping jj to ESC
imap jj <Esc>

" show number line
set number

"set tab = 4 space
set ts=4

"set tu dong thut dong
set autoindent

"expand tab into spaces
set expandtab

" when using the >> or << commands, shift lines by 4 spaces
set shiftwidth=4

" automatic installation
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
" Disable Arrow keys in Escape mode
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
"
" Disable Arrow keys in Insert mode
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" use default colorscheme

" Leader
let mapleader="\<space>"
let g:mapleader="\<space>"

nnoremap <leader>nn :NERDTreeToggle<CR>
nnoremap <leader>w :w!<CR>
nnoremap <leader>h <C-W>h
nnoremap <leader>l <C-W>l
nnoremap <leader>j <C-W>j
nnoremap <leader>k <C-W>k
nnoremap <leader><ESC> :noh<CR>

"buffers
nnoremap <Leader>1 :b1<CR>
nnoremap <Leader>2 :b2<CR>
nnoremap <Leader>3 :b3<CR>
nnoremap <Leader>4 :b4<CR>
nnoremap <Leader>5 :b5<CR>
nnoremap <Leader>6 :b6<CR>
nnoremap <Leader>7 :b7<CR>
nnoremap <Leader>8 :b8<CR>
nnoremap <Leader>9 :b9<CR>
nnoremap <Leader>0 :b10<CR>
nnoremap <Leader>a :badd 

" Deoplete
let g:deoplete#enable_at_startup = 1

" Copy directly from/to clipboard
set clipboard+=unnamedplus

" create new line
map <Enter> o<ESC>
map <S-Enter> O<ESC>
map <C-J> :bnext<CR>
map <C-K> :bprev<CR>
" nerdcommenter
let g:NERDCompactSexyComs = 1

" Set font on start
let g:Guifont="Fantasque Sans Mono:h13"

" Persistent-undo
set undofile " Maintain undo history between sessions
set undodir=~/.vim/undodir

" vim-fish
syntax enable
filetype plugin indent on

if &shell =~# 'fish$'
    set shell=sh
endif

"colorscheme
set termguicolors
let g:gruvbox_italic=1
colorscheme gruvbox
