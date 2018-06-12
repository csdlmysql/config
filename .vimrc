" runtime! debian.vim

" All system-wide defaults are set in $VIMRUNTIME/debian.vim and sourced by
" the call to :runtime you can find below.  If you wish to change any of those
" settings, you should do it in this file (/etc/vim/vimrc), since debian.vim
" will be overwritten everytime an upgrade of the vim packages is performed.
" It is recommended to make changes after sourcing debian.vim since it alters
" the value of the 'compatible' option.
" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'tmux-plugins/tmux-resurrect'
Plug 'vim-airline/vim-airline' | Plug 'vim-airline/vim-airline-themes'
Plug 'christoomey/vim-tmux-navigator'
Plug 'scrooloose/nerdtree'
Plug 'chriskempson/base16-vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'
Plug 'w0rp/ale'
Plug 'jiangmiao/auto-pairs'
Plug 'tmux-plugins/tmux-continuum'
call plug#end()
" autocmd VimEnter * NERDTree

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
set termguicolors
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
set autowrite		" Automatically save before commands like :next and :make
set hlsearch        
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
colo base16-monokai

" Leader
let mapleader="\<space>"
let g:mapleader="\<space>"

nnoremap <leader>nn :NERDTreeToggle<CR>
nnoremap <leader>w :w!<CR>
" Deoplete
let g:deoplete#enable_at_startup = 1

" Copy directly from/to clipboard
set clipboard+=unnamedplus

" Airline
let g:airline#extensions#tabline#enabled = 1
" create new line
map <Enter> o<ESC>
map <S-Enter> O<ESC>
