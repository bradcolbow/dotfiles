" Forget being compatible with good ol' vi
set nocompatible

" Add Pathogen
call pathogen#infect()
call pathogen#helptags()

" Get that filetype stuff happening
filetype on
filetype plugin on
filetype indent on

" Turn on that syntax highlighting and set background color
syntax on

" Colorscheme
let g:solarized_termcolors=256
let g:solarized_termtrans=1
colorscheme solarized
set background=dark

" Remap leader
let mapleader = ","

" Seriously, guys. It's not like :W is bound to anything anyway.
command! W :w
command! Q :q
command! WQ :wq
command! Wq :wq

" Why is this not a default
set hidden

" Don't update the display while executing macros
set lazyredraw

" At least let yourself know what mode you're in
set showmode

" Show incomplete cmds down the bottom
set showcmd

" Add line numbers
set number

" Yank from the cursor to the end of the line, to be consistent with C and D.
nnoremap Y y

if has("gui_running")
  " Highlight current line
  set cursorline
  " Highlight current column
  set cursorcolumn
  " Get rid of toolbar in MacVim
  set guioptions=aAce
end

" Set commandbar height
set cmdheight=2

" Make tab completion act more like bash
set wildmenu
set wildmode=list:longest

" Whitespace stuff
" set wrap
set tabstop=2
set shiftwidth=2
set expandtab

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" Status Line
set statusline=%F%m%r%h%w\ [TYPE=%Y]\ \ \ \ \ \ \ \ \ \ \ \ [POS=%2l,%2v][%p%%]\ \ \ \ \ \ \ \ \ \ \ \ [LEN=%L]
set laststatus=2

" No swap files here, no sir
set nobackup
set nowritebackup
set noswapfile

" NERDTree configuration
let NERDTreeIgnore=['\.rbc$', '\~$']
map <Leader>n :NERDTreeToggle<CR>
