" ==================================================================================================
" Plugins
" ==================================================================================================

call plug#begin()

" load theme
Plug 'morhetz/gruvbox'
Plug 'chriskempson/base16-vim'
Plug 'ajmwagar/vim-deus'
Plug 'ayu-theme/ayu-vim'

" global syntax highlighting
Plug 'sheerun/vim-polyglot'

" specific syntax highlighting
" Plug 'fleischie/vim-styled-components'
" Plug 'valloric/matchtagalways'
" Plug 'hail2u/vim-css3-syntax'
" Plug 'mxw/vim-jsx'

" text manipulation
" Plug 'alvan/vim-closetag'
" Plug 'maralla/completor.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'jiangmiao/auto-pairs'
Plug 'lifepillar/vim-mucomplete'
Plug 'mattn/emmet-vim'
Plug 'svermeulen/vim-easyclip'

" movement
" Plug 'dietsche/vim-lastplace'
" Plug 'matze/vim-move'
" Plug 'takac/vim-hardtime'
" Plug 'yuttie/comfortable-motion.vim'
Plug 'Konfekt/vim-smartbraces'
Plug 'christoomey/vim-tmux-navigator'
Plug 'easymotion/vim-easymotion'

" interface
Plug 'edkolev/tmuxline.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'szw/vim-maximizer'
Plug 'wesQ3/vim-windowswap'
Plug 'yggdroot/indentline'
Plug 'yssl/QFEnter'

" background
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'w0rp/ale'

" el popo
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'


" XML
Plug 'othree/xml.vim'

" devicons (load this last)
Plug 'ryanoasis/vim-devicons'

call plug#end()
