"  ▄█    █▄   ▄█    ▄▄▄▄███▄▄▄▄
" ███    ███ ███  ▄██▀▀▀███▀▀▀██▄
" ███    ███ ███▌ ███   ███   ███
" ███    ███ ███▌ ███   ███   ███
" ███    ███ ███▌ ███   ███   ███
" ███    ███ ███  ███   ███   ███
" ███    ███ ███  ███   ███   ███
"  ▀██████▀  █▀    ▀█   ███   █▀

" ==================================================================================================
" General settings
" ==================================================================================================

" base
set nocompatible                      " vim, not vi
syntax on                             " syntax highlighting
filetype plugin indent on             " try to recognise filetype and load plugins and indent files

" set true colors and add vim specific fixes
set termguicolors
" set t_8f=[38;2;%lu;%lu;%lum
" set t_8b=[48;2;%lu;%lu;%lum


" interface
set background=dark                   " tell vim what the background color looks like
set colorcolumn=100                   " show a column at 100 chars
set cursorline                        " highlight current line
set noshowmode                        " don't show mode
set ruler                             " show current position at bottom
set scrolloff=5                       " keep at least 5 lines above/below
set shortmess+=aAIsT                  " disable welcome screen and other messages
set showcmd                           " show any commands
set sidescroll=1                      " smoother horizontal scrolling
set sidescrolloff=5                   " keep at least 5 lines left/right
set splitbelow                        " create new splits below
set splitright                        " create new splits to the right
set wildmenu                          " enable wildmenu
set wildmode=longest:full,full        " configure wildmenu
set nohidden                          " close buffers instead of hiding them
set number                            " show line number


" whitespace
set nojoinspaces                      " use one space, not two, after punctuation
set shiftround                        " shift to next tabstop
set shiftwidth=4                      " amount of space used for indentation
set softtabstop=4                     " appearance of tabs
set tabstop=4                         " use two spaces for tabs

" folding
set nofoldenable                      " disable folds

" text appearance
set list                              " show invisible characters
set synmaxcol=200                     " stop syntax highlighting after 200 columns
set listchars=tab:>·,trail:·,nbsp:¬   " but only show useful chaaracters
set nowrap                            " disable line wrapping

" interaction
set backspace=2                       " make backspace work like most other apps
set mouse=a                           " enable mouse support
set mousehide                         " hide the mouse cursor while typing
set whichwrap=b,s,h,l,<,>,[,]         " backspace and cursor keys wrap too
set backspace=indent,eol,start

" searching
set hlsearch                          " highlight search matches
set ignorecase                        " set case insensitive searching
set incsearch                         " find as you type search
set smartcase                         " case sensitive searching when not all lowercase

" background processes
set autoread                          " update file when changed outside of vim
set autoindent                        " copy indentation from the previous line for new line
set clipboard+=unnamed                 " use native clipboard
set history=200                       " store last 200 commands as history
set nobackup                          " don't save backups
set noerrorbells                      " no error bells please
set noswapfile                        " no swapfiles
set nowritebackup                     " don't save a backup while editing
set lazyredraw                        " see if this fixes the slowness
set ttyfast                           " indicates a fast terminal connection
set undodir=~/.vim/undodir            " set undofile location
set undofile                          " maintain undo history between sessions
set undolevels=1000                   " store 1000 undos

" character encoding
if !&readonly && &modifiable
  set fileencoding=utf-8              " the encoding written to file
endif
set encoding=utf-8                    " the encoding displayed

" ==================================================================================================
" Change cursor shape based on mode
" ==================================================================================================

let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
let &t_SR = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=2\x7\<Esc>\\"
let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"

" ==================================================================================================
" Keys
" ==================================================================================================

" set leader to ;
let mapleader=";"
let g:mapleader=";"

let g:polyglot_disabled=['css']

" adjust window size with arrow keys
noremap <right> <C-w>5>
noremap <left> <C-w>5<
noremap <up> <C-w>5+
noremap <down> <C-w>5-

" keep selection after indent
vnoremap < <gv
vnoremap > >gv

" sort
vnoremap <leader>s :sort<CR>

" recalculate syntax highlighting
nnoremap <leader>s :syntax sync fromstart<CR>

" reload vim config
nnoremap <leader>r :source $MYVIMRC<CR>

" clear search
nnoremap <leader>c :let @/ = ""<CR>

" select all
nnoremap <leader>a ggVG<CR>

" copy all
nnoremap <leader>y ggVGy<CR>

" upper or lowercase the current word
nnoremap <leader>^ gUiW
nnoremap <leader>v guiW

" cycle through changelist
nnoremap <leader>- g;
nnoremap <leader>= g,

" cycle through jumplist
nnoremap <leader>, <C-o>
nnoremap <leader>. <C-i>

" cycle through quickfix list
noremap <leader>[ :cprev<CR>
noremap <leader>] :cnext<CR>

" ==================================================================================================
" Autocommands
" ==================================================================================================

augroup vimrcEx
  autocmd!

  " disable comment continuation
  autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

  " hide hidden characters in nerdtree buffer
  autocmd FileType nerdtree setlocal nolist
augroup END

" ==================================================================================================
" Searching
" ==================================================================================================

if executable('ag')
  " use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " define Ag command
  command! -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!

  " bind \ to grep shortcut
  nnoremap \ :Ag<SPACE>
endif

" ==================================================================================================
" Load plugins
" ==================================================================================================

source $HOME/.vimrc.plugins.vim

" ==================================================================================================
" Load configs
" ==================================================================================================

source $HOME/.vimrc.config-theme.vim
source $HOME/.vimrc.config-plugins.vim

" ==================================================================================================
" Load statusline
" ==================================================================================================

source $HOME/.vimrc.statusline.vim

highlight Comment cterm=italic

colorscheme panda
